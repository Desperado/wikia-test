
And /^I want to Contribute and add video$/ do
  on_page(HomePage).contribute_video
end

Then /^I am redirected to the "WikiaVideoAdd" page$/ do
  on_page(VideoAddPage).verify_page_url
end

And /^I upload the video "(.*?)"$/ do |video_name|
  on_page(VideoAddPage).upload_video(video_name)
end