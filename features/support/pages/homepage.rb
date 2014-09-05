

class HomePage
  include PageObject
  include DataMagic

  page_url("http://testhomework.wikia.com/")

  text_field(:username, :name => "username")
  text_field(:password, :name => "password")
  button(:signin, :css => "input.login-button")
  link(:desperado, :link => "Desperado2006")
  span(:wiki_header, :class => "drop")
  link(:add_video, :text => "Add a Video")

  def verify_page
    username_element.when_present(30)
  end

  def verify_url(page_url)
    @browser.url.should == page_url
  end

  def fill_in_fields(username, password)
    username_element.when_visible(30)
    @browser.element(:class => "ajaxLogin").hover
    self.username = username
    self.password = password
  end

  def login(username=USERNAME, password=PASS)
    fill_in_fields(username, password)
    signin
  end

  def contribute_video
    wiki_header_element.when_visible(10).click
    add_video

  end

  def verify_loginned
    desperado_element.when_present(30)
  end
end