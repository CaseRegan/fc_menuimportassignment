# Simple rails task for FoodCalc

## Loading the CSV file:
There is a rake task (`rake db:seed`) to populate the database from the `menu_items.csv` file provided in the assignment. This task is for populating the database once it has been created, not creating it from scratch (although this can be done with `rake db:migrate`). The task assumes that the file you wish to populate from is named `menu_items.csv` and is located in the path `lib/seeds` from the project route.

## Approach
I used three models to abstract the important data in the application, which is stored in a PostgreSql database. **MenuItems** corresponded to rows in the csv file, **Lists** were named lists that users could perform CRUD functionalities on, and **ListItems** represented each entry on a list by linking a MenuItem and a List in one row of a table. Each controller is designed in line with CRUD principles, but I narrowed my focus slightly by only implementing the functions I needed for the assignment description. For example, there is a "create" and "delete" function for the list controller, as well as ones for editing them by adding and removing elements. However, functions I deemed unnecessary, like removing items from the imported menu, were not implemented.

The full list of controller functions are as follows:

List:
- List (show every list in the database by name)
- Show (show the contents of a list)
- Create (create a new list with a specified name)
- Delete (delete a given list and all its ListItems)

ListItem:
- Show (display a given ListItem as it is present on a list)
- Create (creates a new ListItem with specified List and MenuItem IDs)
- Delete (deletes a ListItem, removing it from a List)

MenuItem:
- List (show every MenuItem in the database)

The final element of this application is its views. The routes file sets a welcome page with links to a "Menu" page and a "Lists" page. The former displays every MenuItem in the database, while the second allows you to view lists and perform operations on them like creating, deleting, and editing them. Information is stored through GET parameters between pages/views to allow efficient navigation.

## Problems
The big design problem to tackle with this assignment was how to implement a list of lists with relational databases. The approach I settled on has advantages and drawbacks, since it allows easy and fast insertion and deleting but means that the contents of a given list is not in one single place. I also faced some technical problems. For example, I started developing this application with SQLite3 as my database, but I had to switch to PostgreSQL because it wasn't supported on Heroku. I also had an issue with a Gem that segfaulted during compilation, but this could be fixed by specifying an earlier version.

## Future Improvements
Due to the time constraints on the assignment, the frontend isn't especially beautiful. The application's views all generated simple raw HTML and aren't tied to layouts or stylesheets yet. The other thing would prioritize if I wanted this to be a commercial application would be streamlining the upload process. A rake task gets the job done, but depending on the direction of the project a view for uploading local CSV files could be built into the application. This would likely use a create function in the MenuItem controller to insert rows into the database based on what a user entered into a form or submitted via file upload. Delete and update functions could also be necessary.