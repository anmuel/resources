Feature: Configuring actions for resources
	Background:
		Given I am on the root page
	Scenario: Configuring a simple action for an existing resource
		Given I create a new resource with the URI "http://google.com" and the name "google"
		Then I create an action with "zip $output $input" for this resource