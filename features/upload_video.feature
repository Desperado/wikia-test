Feature: Upload video
  As a user
  While I am loginned to wikia
  I want to make sure I can upload videos

  Background:
    Given I am on the Home Page

  Scenario: Successful login
    When I login with valid credentials
    Then I became loginned
    And I want to Contribute and add video
    Then I am redirected to the "WikiaVideoAdd" page
    And I upload the video "http://www.youtube.com/watch?v=h9tRIZyTXTI"
    Then I verify that flash message text was correct
    When I left click to file on the flash message
    Then I am redirected to the "http://testhomework.wikia.com/wiki/File:FILENAME" page
    Then I verify that filename is the same as on the flash message
