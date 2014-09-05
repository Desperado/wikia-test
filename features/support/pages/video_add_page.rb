class VideoAddPage
  include PageObject
  include DataMagic


  text_field(:video_name, :id => 'wpWikiaVideoAddUrl')
  button(:add_video, :text => 'Add')
  div(:success_message, :class => 'msg')
  link(:video_page, :title => 'File:The Best Classical Music In The World')

  def verify_page_url
    sleep 3
    @browser.url.should == "http://testhomework.wikia.com/wiki/Special:WikiaVideoAdd"
  end

  def upload_video(video_name)
    self.video_name = video_name
    add_video
  end

  def verify_message
    success_message.should == "Video page File:" + VIDEONAME + " was successfully added."
  end

  def open_video_page
    video_page
  end

  def verify_redirected_to_video
    @browser.title.should == "Video - " + VIDEONAME + " - Test-homework Wiki"
  end

  def verify_video_page_url()
    sleep 3
    splitted_by_space_name = VIDEONAME.gsub(/\s+/m, ' ').strip.split(" ")
    video_name = splitted_by_space_name*"_"
    @browser.url.should == "http://testhomework.wikia.com/wiki/File:" + video_name

  end

end