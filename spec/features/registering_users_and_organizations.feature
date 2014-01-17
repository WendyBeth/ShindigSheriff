Feature: Registering as a new user

  Scenario: Succesfully creating a new user
    Given I am at the homepage
    When I complete the form with the following:
      
      | ID                        | Input                     |
      | user_first_name           | Kara                      |
      | user_last_name            | Thrace                    |
      | user_email                | kara.thrace@caprica.com   |
      | user_phone_number         | 555-555-5555              |
      | user_password             | password                  |  
      | user_organization_name    | Galactica Meetup          |      

      And I click "Create Account"
    Then I should see "kara.thrace@caprica.com"

  Scenario: Incomplete user form
    Given I am at the homepage
    When I complete the form with the following:
      
      | ID                        | Input                     |
      | user_last_name            | Thrace                    |
      | user_email                | kara.thrace@caprica.com   |
      | user_phone_number         | 555-555-5555              |
      | user_password             | password                  |  
      | user_organization_name    | Galactica Meetup          |      

      And I click "Create Account"
    Then I should see "Error(s) while creating user/organization"
    
  Scenario: Incomplete organization form
    Given I am at the homepage
    When I complete the form with the following:
      
      | ID                        | Input                     |
      | user_first_name           | Kara                      |
      | user_last_name            | Thrace                    |
      | user_email                | kara.thrace@caprica.com   |
      | user_phone_number         | 555-555-5555              |
      | user_password             | password                  |     

      And I click "Create Account"
    Then I should see "Error(s) while creating user/organization"

