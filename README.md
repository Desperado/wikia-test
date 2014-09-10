wikia-test
==========

Wikia demo test based on Ruby, cucumber and https://github.com/cheezy/page-object/wiki/Elements

The test consists of two scenarios

1. **How to prepare environment**

Install ruby and cucumber (on MacOs X) or follow rvm.io::


    curl -L https://get.rvm.io | bash -s stable
    rvm pkg install openssl
    rvm pkg install iconv
    CC=/usr/bin/gcc-4.2 rvm install 1.9.3 --with-iconv-dir=$rvm_usr_path --with -openssh-dir=$rvm_usr_path
    rvm use 1.9.3 --default

Install webdriver::

    gem install rake bundler yard watir-webdriver


2. **How to run scripts**

Checkout repository

CD to the directory, and do::

    gem install testgen
    gem install bundler
    bundle install

Run tests by features, on chrome::

    cucumber features/upload_video.feature BROWSER=chrome
    cucumber features/login.feature BROWSER=chrome

Run tests by features, on firefox::

    cucumber features/upload_video.feature BROWSER=firefox
    cucumber features/login.feature BROWSER=firefox

Run all tests on chrome::

    cucumber BROWSER=chrome

You should have something like::


    Mac-mini-Ruslan:wikia-test ruslan$ cucumber BROWSER=chrome
    Using the default profile...
    Feature: Login to Wikia
        As a user
        I want to login to Wikia website
    So I can work inside it

    Background:
     Given I have opened the Home Page

    Scenario: Successful login
        Then I am redirected to the correct home page "http://testhomework.wikia.com/wiki/Test-homework_Wiki"
        When I login with valid credentials
        Then I became loginned

    Feature: Upload video
    As a user
    While I am loginned to wikia
    I want to make sure I can upload videos

    Background:
        Given I have opened the Home Page

    Scenario: Successful login
        When I login with valid credentials
        Then I became loginned
        And I want to Contribute and add video
        Then I am redirected to the WikiaVideoAdd page
        And I upload the video "http://www.youtube.com/watch?v=h9tRIZyTXTI"
        Then I verify that flash message text was correct
        When I left click to file on the flash message
        Then I am redirected to the page with video name
        Then I verify that filename is the same as on the flash message

    2 scenarios (2 passed)
    14 steps (14 passed)
    0m35.782s
