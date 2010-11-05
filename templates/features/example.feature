Feature: Geekend Schedule
  In order to get the most out of Geekend
  As an attendee
  I should be able to easily read information about the talks

  Scenario: Finding Jesse's talk
    When I go to http://www.geekend2010.com
    When I follow "Geekend 2010 Schedule"
    Then I should see "Testing The Web"