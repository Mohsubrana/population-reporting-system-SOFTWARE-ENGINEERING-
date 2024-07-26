HIGH PRIORITY CASES:

Use Case: View countries in a continent by population
Actors: Users
Necessary Condition: The user has logged on to the application and is trying to use it
Success:
- User is able to select the continent from the list of available ones
- The system is able to access and retrieve the list of countries in that specific continent from the database
- They system can sort the countries by population in either acesending or decending order.
- Users are able to see the list of countries in the selected continent sorted by population
Postconditon: Users  can view the countries in the selected continet by their population in order

Use Case: View Countries in a Region by Population:
Actors: User
Necessary Condition: User is logged on to the application
Success: 
- user can navigate to the region selection page
- user can select a specific region from a dropdown menu or list
- system is able to grab the list of countries in that region from the database
- user can view the list of the countries in the region sorted by their population
Postcondition: The user is able to view countries in the selected region

Use Case: View all the countries by population
Actors: Users
Necessary Condition: User is logged on to the application
Success:
- User can navigate to the country list page
- the system grabs a list of countries from the database
- system sorts it in order
- user can see the list of countries sorted by population
Postcondition: users are able to view the sorted list of countries

MEDIUM PRIORITY:

Use case:View top N populated countries in the word
Necessary Condition: user is logged on to the application
Success:
- User is able to navigate to the top N populated countries page
- user inputs the value of N
- The system then grabs the list of countries from the database
- the system puts it in order
- the system displays the top N populated countries in the world
Postcondtion: The user can view the top N populated countries in the world

LOW PRIORITY:

Use Case: View cities in country by population
Necessary Condition: The user is logged on to the application
Success:
- user selects a country from a list of available ones
- the system grabs the list of cities in the selected country from the database.
- system sorts the cities by population
- user can see the list of cities in the selected country by their population
precondition: user can view the cities in the selected countries

Use case: View Cities in a district by population#
Necessary Condition: the user is logged on to the application.
success: 
- user selects a district from the list of available ones
- system grabs the list of cities in the selected district
- the system sorts the cities according to their population
- user can view the list of cities in that district
Postcondition: the user can view the cities in the selected district sorted by population
