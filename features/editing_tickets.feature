Feature: Editing Tickets
	In order to alter ticket info
	As a user
	I want a form to edit the tickets
	
	Background:
		Given there is a project called "TextMate 2"
		And that the project has a ticket:
			|	title			|	description					|
			|	Make it shiny!	|	Gradients! And more!		|
		Given I am on the homepage
		When I follow "TextMate 2"
		And I follow "Make it shiny!"
		When I follow "Edit Ticket"
		
	Scenario: Updating a ticket
		When I fill in "Title" with "Make it REALLY shiny!"
		And I press "Update Ticket"
		Then I should see "Ticket has been updated."
		And I should see "Make it REALLY shiny!" within "#ticket h2"
		But I should not see "Make it shiny!"
		
	Scenario: Updating a ticket with invalid info
		When I fill in "Title" with ""
		And I press "Update Ticket"
		Then I should see "Ticket has not been updated."
		