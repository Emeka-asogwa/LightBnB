# LightBnB

LightBnB is a database application project developed as part of the course requirements. The back-end of this project was extensively coupled using SQL. The front-end was adapted from [lighthouse-labs/LightBnB_WebApp](https://github.com/lighthouse-labs/LightBnB_WebApp) and installed, `npm install`. Run it using `npm run local` and view it at `localhost:300`.

[LightBnB_WebApp](https://github.com/Emeka-asogwa/LightBnB/tree/master/LightBnB_WebApp) contains all the files for this project. You can find the database queries performing the App functionalities at `LightBnB_WebApp/server/database.js`. 

![Project gif](https://github.com/Emeka-asogwa/LightBnB/blob/master/docs/queryWeb.gif)

## Project ERD
![ERD](https://github.com/Emeka-asogwa/LightBnB/blob/master/docs/ERD.png)

## Project Structure

```
├── public
│   ├── index.html
│   ├── javascript
│   │   ├── components 
│   │   │   ├── header.js
│   │   │   ├── login_form.js
│   │   │   ├── new_property_form.js
│   │   │   ├── property_listing.js
│   │   │   ├── property_listings.js
│   │   │   ├── search_form.js
│   │   │   └── signup_form.js
│   │   ├── index.js
│   │   ├── libraries
│   │   ├── network.js
│   │   └── views_manager.js
│   └── styles
├── sass
└── server
  ├── apiRoutes.js
  ├── database.js
  ├── json
  ├── server.js
  └── userRoutes.js
```

* `public` contains all of the HTML, CSS, and client side JavaScript. 
  * `index.html` is the entry point to the application. It's the only html page because this is a single page application.
  * `javascript` contains all of the client side javascript files.
    * `index.js` starts up the application by rendering the listings.
    * `network.js` manages all ajax requests to the server.
    * `views_manager.js` manages which components appear on screen.
    * `components` contains all of the individual html components. They are all created using jQuery.
* `sass` contains all of the sass files. 
* `server` contains all of the server side and database code.
  * `server.js` is the entry point to the application. This connects the routes to the database.
  * `apiRoutes.js` and `userRoutes.js` are responsible for any HTTP requests to `/users/something` or `/api/something`. 
  * `json` is a directory that contains a bunch of dummy data in `.json` files.
  * `database.js` is responsible for all queries to the database. It doesn't currently connect to any database, all it does is return data from `.json` files.

  ## Sample Queries
  ### [most_visited_cities.sql](https://github.com/Emeka-asogwa/LightBnB/blob/master/queries/most_visited_cities.sql)

  Shows the most visited cities based on their total reservations.

 ``` 
          city         | total_reservations 
----------------------+--------------------
 Carcross             |                405
 Town of Hay River    |                379
 Whitehorse           |                376
 Town of Inuvik       |                298
 Yellowknife          |                257
 Cornwall             |                190
 Souris               |                164
 Alberton             |                152
 Summerside           |                127
 St. Johns            |                123
 Steinbach            |                120
 Paradise             |                116
 Montague             |                111
 Flin Flon            |                103
 Portaux Basques      |                102
 Stratford            |                102
 Snow Lake            |                101
 Botwood              |                 96
:
```



## [average_duration.sql](https://github.com/Emeka-asogwa/LightBnB/blob/master/queries/average_duration.sql)
This selects the average duration of all reservations. 


```
 average_duration   
---------------------
 14.6636000000000000
(1 row)
```

## [Select user by email](https://github.com/Emeka-asogwa/LightBnB/blob/master/queries/0_query_for_user.sql)
You can **SELECT** id, name, email and password of a given user from the database, for example user with email:*'tristanjacobs@gmail.com'*, and hashed password:*'password'*.

```
 id |     name      |          email          |                           password                           
----+---------------+-------------------------+--------------------------------------------------------------
  1 | Devin Sanders | tristanjacobs@gmail.com | $2a$10$FB...
(1 row)
```