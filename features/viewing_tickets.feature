Feature: Viewing Tickets
	In order to view the tickets for a project
	As a user
	I want to see them on that project's page
	
	Background:
		Given there is a project called "TextMate 2"
		And that the project has a ticket:
			|	title				|	description							|
			|	Make it shiny!		|	Gradients! Starbursts! Oh my!		|
		And there is a project called "Internet Explorer"
		And that the project has a ticket:
			|	title				|	description							|
			| 	Standards Compliant	|	Isn't a joke.						|
		
		And I am on the homepage
		
	Scenario: Viewing tickets fora  given project
		When I follow "TextMate 2"
		Then I should see "Make it shiny!"
		And I should not see "Standards Compliant"
		When I follow "Make it shiny!"
		Then I should see "Make it shiny!" within "#ticket h2"
		And I should see "Gradients! Starbursts! Oh my!"
		
		When I follow "Ticketee"
		And I follow "Internet Explorer"
		Then I should see "Standards Compliant"
		And I should not see "Make it shiny!"
		When I follow "Standards Compliant"
		Then I should see "Standards Compliant" within "#ticket h2"
		And I should see "Isn't a joke."