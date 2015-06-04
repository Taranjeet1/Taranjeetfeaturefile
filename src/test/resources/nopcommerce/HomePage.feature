@CategoriesList
Feature: Categories list Menu
  As auser in the Categories list
  I ca see Books,Computers,Electronics,Apparel & Shoes,Digital downloads,Jewelary and Gift Card

  Scenario: User can see Categories list  on the left panel of the home page
    Given User is on the Home page
    Then User should see Categories '<Categories list>' on  the left panel of the  Home page
    Then User should be able to select those Categories and Navigate to those Categories page
    Examples:
  |Categories list|
  |Books|
  |Computers|
  |Electronics|
  |Apparel|
  |Shoes|
  |Digital|
  |downloads|
  |Jewelary|
  |Gift|