Feature: Resource Management
	In order to do awesome stuff with my resource they must be managable
	
	Background:
		Given I am on the root page
	
	Scenario: Adding a new resource
		When I create a new resource with the URI "http://beste-apps.chip.de/android/alle-genres,0/neueste_kostenlos" and the name "Chip Android App News RSS"
		Then I want to see it on the resources index page