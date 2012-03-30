@http://www.pivotaltracker.com/story/show/20543683
Feature: User views images with the same topic
  In order to enjoy the site
  As a user on the home page
  I want to view an image

  - Home page displays images with the same name and description ordered by votes descending. (topic)

  Scenario:
    Given the following images:
      | name | description | url                                                    | votes |
      | baby | heaviest    | http://img230.imageshack.us/img230/39/giantbabyux0.jpg | 2     |
      | baby | heaviest    | http://sheshavingababy.files.wordpress.com/2007/11/050120_brazil_baby_hmed_7ahmedium.jpg| 1     |
    When I am on the home page
    Then I should see the following list:
     | http://img230.imageshack.us/img230/39/giantbabyux0.jpg                                   |
     | http://sheshavingababy.files.wordpress.com/2007/11/050120_brazil_baby_hmed_7ahmedium.jpg |
