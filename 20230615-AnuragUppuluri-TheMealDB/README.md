#  Documentation: —

The purpose of this app is to allow users such as prospective students and their parents to browse through an exhaustive list (per District Borough Number) of high schools in and around New York City. This list and associated school information has been procured with the help of URLSession data tasks from the 2017 open source NYC high school APIs:
    https://data.cityofnewyork.us/resource/s3k6-pzi2.json
    https://data.cityofnewyork.us/resource/f9bf-2cp4.json
    After hitting these APIs, the incoming JSONs have been decoded with help of JSONDecoder.
     
 After browsing this list of high schools, the users can choose to click on any school of interest thereby saving it in Core Data as a favorite, while at the same time being able to segue to a details view pertaining to that school and capture at a glance all the essential details that will likely help them with their decision to shortlist and checkout these schools. When the users get back to the initial list and click again on a selected school, they will be able to remove it from Core Data and from their list of favorites.
 
 This project uses the MVVM architectural design pattern. In this design pattern, the Model represents the data and is responsible for managing the state of the application. The View Model represents the business logic of the application and is responsible for performing any necessary data operations, to get the data ready to be displayed to the user and to handle any data requests coming from the View. The View is the application's UI, and its job is to show the data and handle user interactions. So, in effect, the View Model acts as the middleman/mediator/facilitator between the Model and the View. In this way one of the key concepts of software engineering, i.e., separation of concerns is achieved.
 
AppUtilities group (and the rest of the app) follows SOLID principles and contains the following: —
Database Manager
Network Manager
API Manager

The app as a whole follow MVVM architectural design pattern and contains the following: —
Business Data Models (School, SchoolInfo)
Core Data Models (CDSchool)

View Models are: —
SchoolViewModel
SchoolInfoViewModel

Views contain: —
Controls (cell etc, any custom view)
View Controllers (SchoolViewController, SchoolInfoViewController)

Submitted By Anurag Uppuluri
