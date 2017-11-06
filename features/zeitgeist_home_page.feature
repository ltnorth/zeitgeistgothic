Feature: Zeitgeist Home Page

  Scenario: I want to see details of a listed best seller by clicking the image of the product
    Given I am on the homepage
    When I click on the image of a best seller product
    Then I am redirected to the product page for that product

  Scenario: I want to either see details of a best seller by clicking the button under the image or add a phone case straight to the basket
    Given I am on the homepage
    When I click the button under the product image
    Then I am either redirected to the item's product page or it is added straight to my basket if appropriate