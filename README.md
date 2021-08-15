# Simple rails task for FoodCalc

## Loading the CSV file:
There is a rake task (`rake db:seed`) to populate the database from the `menu_items.csv` file provided in the assignment. This task is for populating the database once it has been created, not creating it from scratch (although this can be done with `rake db:migrate`). The task assumes that the file you wish to populate from is named `menu_items.csv` and is located in the path `lib/seeds` from the project route.