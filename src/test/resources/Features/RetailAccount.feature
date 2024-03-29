@CompleteTest @RetailAccountFeatureCompleteTest
Feature: Retail Application Account Feature

  Background: 
    Given User is on retail website
    When User click on Sing in option
    And User enter email 'noor.noori@gmail.com' and password 'Ahmad1987@'
    And User click on login button
    And User should be logged in into Account

  @RetailAccountFeatureScenario1SmokeTest
  Scenario: Verify User can update Profile Information
    When User click on Account option
    # Use keyword testData for new phone number every test
    And User update Name 'Noori' and Phone 'testData'
    And User click on Update Button
    Then User profile information should be updated

  #@RetailAccountFeatureScenario2SmokeTest      -------------------------------------- Moved To separate Feature File
  #Scenario Outline: Verify User can Update password
  #When User click on Account option
  #And User enter below information
  #| previousPassword   | newPassword   | confirmPassword   |
  #| <previousPassword> | <newPassword> | <confirmPassword> |
  #And User click on Change Password button
  #Then a message should be displayed 'Password Updated Successfully'
  #
  #Examples:
  #| previousPassword | newPassword | confirmPassword |
  #| Ahmad1987@        | Ahmad1987@   | Ahmad1987@       |
  #| Ahmad1987@        | Ahmad1987@   | Ahmad1987@       |
  @RetailAccountFeatureScenario3SmokeTest
  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
      #use keyword testData for new card number every time
      | cardNumber | nameOnCard   | expirationMonth | expirationYear | securityCode |
      | testData   | Noor Noori  |               9 |           2026 |          999 |
    And User click on Add your card button
    Then a message should be displayed 'Payment Method added sucessfully'

  @RetailAccountFeatureScenario4SmokeTest
  Scenario: Verify User can edit Debit or Credit card
    When User click on Account option
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard    | expirationMonth | expirationYear | securityCode |
      | 9438956327854326 | Noor Noori |               9 |           2026 |          999 |
    And user click on Update Your Card button
    Then a message should be displayed 'Payment Method updated Successfully'

  @RetailAccountFeatureScenario5SmokeTest
  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    And User click on remove option of card section
    Then payment details should be removed

  @RetailAccountFeatureScenario6SmokeTest
  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName     | phoneNumber | streetAddress | apt | city       | state    | zipCode |
      | United States | Noor Noori | 2404771699 | 1100 B Street |   4 | Stafford | Virginia |   22556 |
    And User click Add Your Address button
    Then a message should be displayed 'Address Added Successfully'

  @RetailAccountFeatureScenario7SmokeTest
  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And user fill new address form with below information
      | country       | fullName     | phoneNumber | streetAddress | apt | city       | state    | zipCode |
      | United States | Noori | 2404771699 | 1100 B Street |   4 | Stafford | Virginia |   22556 |
    And User click update Your Address button
    Then a message should be displayed 'Address Updated Successfully'

  @RetailAccountFeatureScenario8SmokeTest
  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
