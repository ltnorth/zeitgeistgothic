Feature: Basket

  Background: I am on the cart page
    Given I am on the cart page
    Then I can move on

  Scenario: I have an empty cart and want to return to the shop
    Given I have an empty basket
    When I click 'return to shop'
    Then I am redirected to the shop page

  @item_in_basket
  Scenario: I want to see the product page of an item in my basket
    Given I have an item in my basket
    When I click on the name of an item in my basket
    Then I am redirected to that item's product page

  @item_in_basket
  Scenario: I want to remove a product from my basket
    Given I have an item in my basket
    When I click the red cross next to that item
    Then an alert box appears with the option to undo the change
    And the cart overview is updated

  @specific_item_in_basket
  Scenario: Adjusting the quantity of the items in the cart should update the amount that it costs.
    Given i adjust the quantity of the item in my basket
    When I click the update button
    Then My basket is updated succesfully

  @item_in_basket
  Scenario: Clicking on the checkout button will forward you to the checkout page
    Given I have an item in my basket
    When I click on the proceed to checkout button
    Then I am redirected to the checkout page

  @item_in_basket
  Scenario: Clicking on the undo button once an item has been removed from the basket will put the item back in the basket. 
    Given I have removed an item from my basket
    When I click on the undo link
    Then the item reapears in my basket.

    




















