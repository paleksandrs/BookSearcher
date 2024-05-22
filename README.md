# BookSearcher

Write a test app called "Book Searcher" that has 2 screens: 

1) Search screen (landing screen). At the top of the screen there should be a UISearchBar and below it a UITableView for search results. User should be able to type in a query string into the search field and see results in the table. Each table cell should display thumbnail, title and author of the book.

2) Detail view.  If a user selects a result/cell from the  Search screen a detail view screen is pushed. The layout of the screen (how it looks) is up to you, but the screen should display book title, author, description, thumbnail.

API endpoint:  `https://www.googleapis.com/books/v1/volumes?q=<your_query_string>`

Example: `https://www.googleapis.com/books/v1/volumes?q=programming`

The app should be written in Swift using use auto layout for UI. If possible third party frameworks should be avoided, but can be used for small tasks (e.g. loading images, networking).
The main purpose of this example app is to allow you to demonstrate your knowledge of different design patterns, SOLID principles and how clean and reusable code you can write. Basic error handling can be implemented (print statement will be sufficient). If the app takes too much time, feel free to leave todo comments for unimplemented functionality (e.g. // todo: handle errors). Bonus points if the app is written using TDD approach or with unit tests. 