class VideoAddPage
  include PageObject
  include DataMagic


  text_field(:video_name, :id => 'wpWikiaVideoAddUrl')
  button(:add_video, :text => 'Add')


  def verify_page_url
    sleep 5
    print @browser.url
    @browser.url.should == "http://testhomework.wikia.com/wiki/Special:WikiaVideoAdd"
  end

  def upload_video(video_name)
    self.video_name = video_name
    add_video
  end



end