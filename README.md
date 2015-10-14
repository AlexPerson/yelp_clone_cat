# Yelp Challenge

Week seven challenge at Makers Academy. This week's project is a clone of Yelp. The goal is to introduce us to Rails, focusing especially on:

• Creating Rails applications
• The structure of Rails apps (MVC, the router, helpers)
• TDD in Rails, with RSpec & Capybara
• Associations
• Validations
• AJAX in Rails

## Technologies Used:

1. Ruby - version
2. RSpec and Capybara for testing
3. Rails
4. PostgreSQL
4. Database creation/initialization?

## Approach:

My pair partner and I will build the Yelp clone in three stages:

### Stage One

* Restaurants can be edited and deleted
* Visitors can leave reviews for restaurants, providing a numerical score (1-5) and a comment about their experience
* The restaurants listings page should display all the reviews, along with the average rating of each restaurant
* Validations should be in place for the restaurant and review forms - restaurants must be given a name and rating, reviews must be given a rating from 1-5 (comment is optional)

### Stage Two

* Users can register/login
* A user must be logged in to create restaurants
* Users can only edit/delete restaurants which they've created
* Users can only leave one review per restaurant
* Users can delete their own reviews
* Some indication should be given on the page (as part of the layout) whether the user is currently logged in, along with links to the available actions (i.e. Logout/Edit account is signed in, otherwise Sign In/Sign Up)
* The email address of the reviewer should be displayed as part of the review
* Users can't review a restaurant which they created

### Stage Three

* Migrate functionality to happen asynchronously with AJAX so when writing a review, the user does not have to go to a separate page and trigger a page refresh.
* Create a helper method to allow ratings and average ratings to be displayed as stars (e.g.) rather than numbers
* Use CSS to enhance the overall design of the site
* Refactor your more complex views to use partials
* Add the ability for users to add an image to a restaurant, by pointing to an external image URL

## Progress:

Stage 1 complete and currently working on Stage Two.

## How to install and run tests:
