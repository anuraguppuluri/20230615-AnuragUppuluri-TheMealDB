#  Documentation: —

The purpose of this app is to allow users to browse through a list of desserts and get more information about each of them. This list and associated dessert details have been procured with the help of URLSession data tasks from the open source The Meal Database APIs:
    https://themealdb.com/api/json/v1/1/filter.php?c=Dessert
    https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID
    After hitting these APIs, the incoming JSONs have been decoded with the help of JSONDecoder.
     
 After browsing the initial list of desserts, the users can choose to click on any dessert of interest and segue to a details view pertaining to that dessert and capture at a glance all the essential details that will likely help them with making the dessert themselves.
 
 This project uses the MVVM architectural design pattern. In this design pattern, the Model represents the data and is responsible for managing the state of the application. The View Model represents the business logic of the application and is responsible for performing any necessary data operations, to get the data ready to be displayed to the user and to handle any data requests coming from the View. The View is the application's UI, and its job is to show the data and handle user interactions. So, in effect, the View Model acts as the middleman/mediator/facilitator between the Model and the View. In this way one of the key concepts of software engineering, i.e., separation of concerns is achieved.

Utilities group (and the rest of the app) follows SOLID principles and contains the following: —
Network Manager
API Manager

The app as a whole follows MVVM architectural design pattern and contains the following: —
Business Data Models (Desserts, DessertDetails)

View Models are: —
DessertsViewModel
DessertDetailsViewModel

Views contain: —
Controls (cell etc, any custom view)
View Controllers (DessertsViewController, DessertDetailsViewController)

Submitted By Anurag Uppuluri on 6/18/2023
