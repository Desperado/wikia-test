Feature: Login to Wikia
  As a user
  I want to login to Wikia website
  So I can work inside it

  Background:
    Given I am on the Home Page

  Scenario: Successful login
    When I login with valid credentials
    Then I became loginned