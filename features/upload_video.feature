Feature: Upload video
  As a user
  While I am logined to wikia
  I want to make sure I can upload videos

  Background:
    Given I am already logined in the system

  Scenario: Upload video
    When I click Contribute and add video
    Then I am redirected to the WikiaVideoAdd page
    And I upload the video "http://www.youtube.com/watch?v=h9tRIZyTXTI"
    Then I verify that flash message text was correct
    When I left click to file on the flash message
    Then I am redirected to the page with video name
    Then I verify that filename is the same as on the flash message
