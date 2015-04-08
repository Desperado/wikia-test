Feature: Login to Wikia
  Aeees a user
  I want to login to Wikia website
  So I can work inside it

  Background:
    Given I have opened the Home Page

  Scenario: Successful login
    Then I am redirected to the correct home page "http://community.wikia.com/wiki/Special:CloseWiki/information/testhomework"
