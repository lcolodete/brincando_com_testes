Feature: Define factories for any kind of object

	Scenario: Define a user factory
		Given I have defined a factory called "user"
		When I ask to build a factory "user"
		Then I should have an object representing this factory
