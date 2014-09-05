
And /^I want to Contribute and add video$/ do
  on_page(HomePage).contribute_video
end

Then /^I am redirected to the WikiaVideoAdd page$/ do
  on_page(VideoAddPage).verify_page_url
end

And /^I upload the video "(.*?)"$/ do |video_name|
  on_page(VideoAddPage).upload_video(video_name)
end

Then /^I verify that flash message text was correct$/ do
  on_page(VideoAddPage).verify_message
end

When /^I left click to file on the flash message$/ do
  on_page(VideoAddPage).open_video_page
end

Then /^I am redirected to the page with video name$/ do
  on_page(VideoAddPage).verify_redirected_to_video
end

Then /^I verify that filename is the same as on the flash message$/ do
  on_page(VideoAddPage).verify_video_page_url
end