@CompleteTest @SignInFeatureTest
Feature: TEK Retail Application SignIn feature

  Background: 
    Given User is on retail website
    When User click on Sing in option

  @smokeTest
  Scenario: Verify user can sign in into Retail Application
    And User enter email 'noor.noori@gmail.com' and password 'Ahmad1987@'
    And User click on login button
    Then User should be logged in into Account

  @smokeTestOutline
  Scenario Outline: Verify user can sign in into Retail Application
    And User enter email '<email>' and password '<password>'
    And User click on login button
    Then User should be logged in into Account

    Examples: 
      | email                  | password   |
      | ahmad11@gmail.com     | Ahmad11@ |
      | noor.noori@gmail.com | Ahmad1987@  |

  @smokeTestCreateAccountScenario
  Scenario: Verufy user can create an account into Retail website
    And User click on Create New Account button
    # Use keyword testData for new email every test
    And User fill the signUp information with below data
      | name  | email    | password  | confirmPassword |
      | Tests | testData | Ahmad11@ | Ahmad11@       |
    And User click on SignUp button
    Then User should be logged into account page
