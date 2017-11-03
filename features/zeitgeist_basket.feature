Feature: Basket

  Background: I am on the cart page

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