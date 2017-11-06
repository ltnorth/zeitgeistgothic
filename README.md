# Zeitgeistgothic

## Task
We were tasked with testing an online website: <https://www.zeitgeistgothic.co.uk/> and had to plan how to test the website.

As a group, we discussed how our Kanban board should be set out. The board consited of the following columns:

* **Prioritise:** 1 being high and 3 being low
* Execute
* Review
* **Definition of done:** has the code been peer reviewed and has it been indented properly, implementing DRY.

We then derived user stories which would assist us in creating our test cases/conditions, which were priortised from 1-3; 1 being the test which tests the most functional aspect of the website. Each member of the group took responsibilty on which user story they wanted to complete.

## Tasks undertaken by each member

#### Chris
I worked on the navigation page object model. This involved creating a section that siteprism would recognise. 

Search Bar Testing
On the search bar i tested that it would go to a product page when a user searched for a vaild product, when a generic term was given it would give the user a list of possible results. When given a javascript tag it would give a valid error message. 

Cart testing. 
I tested the links on the products in the cart. Removing a product from the cart and adjusting the quantity of items in the cart. Making sure changes are not overwritten when the back button is used in the browser. Undoing the removal of an item in the basket. 

My account.
I tested the links on the my account page to the satisfaction of the product owner as he was less worried about that area of the site. 

#### Martha
* Worked with James on the checkout form, filling in the form with enough information to continue to paypal, and testing that you are able to select 'create an account' and fill in a password, although based on information from the product owner we decided not to test actually creating an account.
* Altered the before hook to allow it to be used in the checkout tests.

#### Abass
* Started ReadMe basic structure.
* Assisted Liam in doing the home_page.rb.
* Did the cart_page.rb.
* Myself and Luke pair programmed to complete the shop page, shop page two POM files as well as writing the 'given when then' for the corresponding features file. Also did the step definitons for thee two files stated.
* Myself and Luke did the POM for a product page, in this instance it was for the 'word up tee'.
* Did the before hook where we could call an instance variable which assisted us in implementing DRY when running tests. Achieved by adding a new method called 'added to basket' in the 'word up tee' POM file. Hooks.rb file created in support folder, where the appropriate code written.
* Did the navbar testing from the homepage and the shop page.

#### Luke
* Pair programmed with Abass the shop pages, this includes the page object models of shop page and shop page two, defining and writing tests. As well as the shop page myself and Abass also completed the POM and tests for the product page although this only testing the 'word up tee' due to a lack of time to test more products. 
* Also wrote the methods which were used in the before hook.
* Tested the new in section of the home page.

#### Liam

#### James
worked with martha to fully test the checkout form and payment system. using xpaths, ids and 'names' to find elements in the page. tested all fields and account creation.
