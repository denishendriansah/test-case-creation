Feature: Signup 99 Singapore

  Scenario: Successful signup with valid inputs
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user enters a valid phone number with country code
    And the user enters a valid password with at least 8 characters, one lowercase, one uppercase, and one symbol
    And the user submits the form
    Then the user should be successfully signed up
    And the user should see a confirmation message

  Scenario: Signup with missing name
    Given the user is on the signup page
    When the user leaves the name field empty
    And the user enters a valid email
    And the user enters a valid phone number with country code
    And the user enters a valid password
    And the user submits the form
    Then the user should see an error message indicating the name is required

  Scenario: Signup with missing email
    Given the user is on the signup page
    When the user enters a valid name
    And the user leaves the email field empty
    And the user enters a valid phone number with country code
    And the user enters a valid password
    And the user submits the form
    Then the user should see an error message indicating the email is required

  Scenario: Signup with missing phone number
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user leaves the phone number field empty
    And the user enters a valid password
    And the user submits the form
    Then the user should see an error message indicating the phone number is required

  Scenario: Signup with missing password
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user enters a valid phone number with country code
    And the user leaves the password field empty
    And the user submits the form
    Then the user should see an error message indicating the password is required

  Scenario: Signup with invalid phone number (missing country code)
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user enters a phone number without country code
    And the user enters a valid password
    And the user submits the form
    Then the user should see an error message indicating the phone number must include country code

  Scenario: Signup with invalid password (less than 8 characters)
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user enters a valid phone number with country code
    And the user enters a password with less than 8 characters
    And the user submits the form
    Then the user should see an error message indicating the password must be at least 8 characters long

  Scenario: Signup with invalid password (missing lowercase letter)
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user enters a valid phone number with country code
    And the user enters a password without a lowercase letter
    And the user submits the form
    Then the user should see an error message indicating the password must include at least one lowercase letter

  Scenario: Signup with invalid password (missing uppercase letter)
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user enters a valid phone number with country code
    And the user enters a password without an uppercase letter
    And the user submits the form
    Then the user should see an error message indicating the password must include at least one uppercase letter

  Scenario: Signup with invalid password (missing symbol)
    Given the user is on the signup page
    When the user enters a valid name
    And the user enters a valid email
    And the user enters a valid phone number with country code
    And the user enters a password without a symbol
    And the user submits the form
    Then the user should see an error message indicating the password must include at least one symbol
