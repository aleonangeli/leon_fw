Feature: As a LinkedIn user,
  I want to be able to send private messages to other users,
  in order to improve my automation skills

  Scenario: Send private messages on LinkedIn successfully
    Given I'm logged into my LinkedIn accound with a valid credentials
    When I go to the messages section
    And look for certain contact
    Then I'm able to write and send a message successfully

#  Scenario Outline: Send a private message on LinkedIn successfully
#    Given I'm logged into my LinkedIn accound with valid "<user>" and "<password>"
#    When I go to the messages section
#    And look for certain "<contact>"
#    Then I'm able to write and send a "<message>" successfully
#
#
#    Examples:
#      |user             |password|contact                 |message                  |
#      |example@gmail.com|password|Michael "Fritz" Fritzius|Automated example message|

