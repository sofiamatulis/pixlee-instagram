##Pixlee- Instagram

 This is a  simple web app to showcase Instagram's pictures. The user can search through photos by tag and date.The user can also make an account and create a gallery where the photos can be saved.

 Gems that were used:

* 1) Instagram: The Instagram gem is a ruby API gem that helps and simplifies the process to pull Instagram photos into the web app.


* 2) React-rails: React-rails makes it simpler to user React and JSX in the application



* 3) Figaro: Figaro makes it easier to configure the application in a secure method.


Instagram API docs: <br>
https://www.instagram.com/developer/endpoints/tags/ <br>


  <br>
  Heroku link: <br>
https://stark-dawn-58719.herokuapp.com

  <br>

  * What was done for Back-end: In terms of back-end, I created a rails app(MVC model). When it comes to models, I created a User model (the user can make an account), a Gallery model(a user can create an account), and a photo model (information from the photos pulled from Instagram's API). In terms of views, views for log in/sign up, create a gallery, view a gallery/all galleries, view all photos, search photos, add photos to the gallery, were made to make the user experience very friendly. Finally, in terms of the controller, in the photos controller, there are the functions to add photos to your gallery and the index of all the photos, in the users controller there is the option to create a new account, in the sessions controller, there is the option to log in and log out and in the galleries controller, it is possible to make new galleries and view them.

  * What was done for Front-end: In terms of front-end, I used React to showcase the gallery's show page, javascript to be able to save a photo in a gallery with an AJAX request and a drop down menu to make it more user friendly. CSS was used to make the page look nicer and only some views are rendered if the user is logged in, if he is logged out only the search function is available. 

   <br>Features that were added:

  * Search through Instagram's photos by hashtag and date

  * A user is able to create an account and login

  * A user is able to create a gallery

  * A user is able to save photos into the gallery


   <br>What I would improve: <br>
   With more time I would have made a more in depth search function and a better interface for the user.


   Documentation:

![alt tag](https://scontent-yyz1-1.xx.fbcdn.net/v/t1.0-9/15179043_10154754360753781_6324825421996386170_n.jpg?oh=24f075ae15474bccd234217257c370f3&oe=58BC4084)

![alt tag](https://scontent-yyz1-1.xx.fbcdn.net/v/t1.0-9/15181466_10154754360758781_1978492430456303562_n.jpg?oh=5ad6ac5c765408d2098b9f6618587abe&oe=58B9657C)
