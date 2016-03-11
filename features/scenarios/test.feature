Feature: A random testcase using googles search bar

Testing cucumber setup and that all connections are working properly. 
Also used as an example of a cucumber Test Case. 

Who: As someone who is setting up a cucumber test suite 
What: I want to test that I can connect to google and run a sample test.
Why: So that I am confident that everything is set up correctly so I can move on to writing tests. 

Scenario Outline: The one where I create an example test case 
	Given I am setting up cucumber on my computer 
	When I run cucumber in the terminal
	Then I should navagate to <site> 

@New_test
Examples: 
| site  |
| google| 