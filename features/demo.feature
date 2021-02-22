Feature: Demo

  Scenario Outline:  Connect to Web
    Given I connect to "<application>"
    Then I should see "<url>"

    Examples:
      | notes                   | application  | url                                   |
      | Connect to Google       | Google       | https://www.google.com/               |
      | Connect to Github       | Github       | https://github.com/                   |