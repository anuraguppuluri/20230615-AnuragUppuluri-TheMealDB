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




Scott McReynolds <s.mcreynolds@fetchrewards.com>
Wed, Jun 21, 9:06 AM (6 days ago)
to me

Anurag,

Thanks you so much for applying to the iOS Software Engineer role. Unfortunately, we have decided not to proceed with your candidacy for the current opening at Fetch.

We received many qualified applicants and have decided to move ahead with other candidates who we feel are a better match for this particular position. Here's some feedback: 

What went well: 

Uses MVVM

What could have gone better: It would have been preferred to build the UI programmatically rather than storyboards . Building the UI programmatically gives better control over the UI and removes the potential of messy merge conflicts if multiple developers where on the project.In the dessert details screen, we should not be showing commas where empty ingredients/measurements are. Instead we should be filtering out the empty ingredients.The Dessert model could be improved by holding an array of the ingredients/measurements instead of a property for every single ingredient and measurement. This allows us to scale better if the backend response sends 20+ ingredients/measurements.Decoding the ingredients/measurements dynamically would have to be done using coding keys and the decoder initThe completion handlers for decodeDesserts and decodeDessertDetails funcs in TMDBAPIManager should complete using the Result type instead of a tuple with the data and error. This allows use to just pass in one property when calling the completion, either a .success or .failure, and is a cleaner approach. Further more, the two decode functions are very similar and could be replaced with one generic function.

Thanks again for your interest in Fetch, and we wish you luck in your search.


Regards,
Fetch

Anurag Uppuluri <anuraguppuluri2898@gmail.com>
9:31 PM (9 minutes ago)
to Scott

Hi Scott,
Thanks for such a detailed review! I really appreciate your feedback! It was refreshing and enlightening!
Wish you have a great one and hope we cross paths again,
Best,
Anurag
