# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app: This application was created using Sinatra gem.  Because of this, I was able to use ruby to create an application that responds to HTTP requests.
- [x] Use ActiveRecord for storing information in a database: Tables created for Users and Hikes the contain columns for all necessary information.
- [x] Include more than one model class (e.g. User, Post, Category): The project is set up with two models (Hike and User)
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts): The Users class has_many Hikes.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User): The Hikes class belongs_to Users. 
- [x] Include user accounts with unique login attribute (username or email): All usernames and email addresses must be unique and uniqueness is validated.  To create a login, the user must submit their name, username, email address and password.  Passwords are ran through a hashing algorithm before they are stored in the database.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying: All CRUD routes have been created and tested in the hikes_controller.
- [x] Ensure that users can't modify content created by other users: Helper method created and added to routes to ensure that only the currect user can update their own content.
- [x] Include user input validations: Validations added to the User model for presence and uniqueness.  Validations added to the Hike model for presence. 
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new): Added the rack-flash3 gem and code so that that an error message is displayed if the validations criteria are not met.  Also added RecordNotFound to redirect to an error view if the user happens to update the url incorrectly.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code: Created a readme with basic info on how to install and use the application.  The redeem also includes development, contributing license and code of conduct portions.	

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message: 	