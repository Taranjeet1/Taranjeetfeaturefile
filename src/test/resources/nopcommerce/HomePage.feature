@CategoriesList
Feature: Categories list Menu
  As a user in the Categories list
  I can see Books,Computers,Electronics,Apparel & Shoes,Digital downloads,Jewelary and Gift Card

  Scenario: User can see Categories list  on the left panel of the home page
    Given User is on the Home page
    Then User should see Categories on  the left panel of the  Home page
    Then User should be able to Navigate to those Categories page
  |Books|
  |Computers|
  |Electronics|
  |Apparel|
  |Shoes|
  |Digital|
  |downloads|
  |Jewelary|
  |Gift|