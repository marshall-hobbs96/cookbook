Feature: Creating user

Scenario: Creating new user successfully (positive test)
	Given I am at the create user page
	When I enter in a username
	And I enter in a password and retype the password
	And I enter in a firstname
	And I enter in a lastname
	And I enter in an email
	And I click the submit button
	Then I should see a message telling me that the user has successfully been created
	
Scenario: Creating new user without firstname (positive test)
	Given I am at the create user page
	When I enter in a username
	And I enter in a password and retype the password
	And I enter in a lastname
	And I enter in an email
	And I click the submit button
	Then I should see a message telling me that the user has successfully been created
	
Scenario: Creating new user without lastname (positive test)
	Given I am at the create user page
	When I enter in a username
	And I enter in a password and retype the password
	And I enter in a firstname
	And I enter in an email
	And I click the submit button
	Then I should see a message telling me that the user has successfully been created
	
Scenario: Forgetting username (negative test)
	Given I am at the create user page
	And I enter in a password and retype the password
	And I enter in a firstname
	And I enter in a lastname
	And I enter in an email
	And I click the submit button
	Then I should see a message saying that the user cannot be created because username is blank
	
Scenario: Forgetting password (negative test)
	Given I am at the create user page
	When I enter in a username
	And I enter in a firstname
	And I enter in a lastname
	And I enter in an email
	And I click the submit button
	Then I should see a message saying that the user cannot be created because password is blank
	
Scenario: Retyped password doesnt match (negative test)
	Given I am at the create user page
	When I enter in a username
	And I enter in a password but leave retyped password blank
	And I enter in a firstname
	And I enter in a lastname
	And I enter in an email
	And I click the submit button
	Then I should see a message saying that the user cannot be created because retyped password doesnt match
	
Scenario: Forgetting email (negative test)
	Given I am at the create user page
	When I enter in a username
	And I enter in a password and retype the password
	And I enter in a firstname
	And I enter in a lastname
	And I click the submit button
	Then I should see a message saying that the user cannot be created because email is blank 
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	