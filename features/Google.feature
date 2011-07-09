Feature: search for a term at www.google.com

	Scenario: locate caelum's url
		Given I am at "http://www.google.com.br"
		When I fill in the "q" field with the string "caelum" 
		And I click the "Pesquisa Google" button
		Then I should see "www.caelum.com.br"
