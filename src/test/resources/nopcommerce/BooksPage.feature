Feature: Books Categories Page
  As a user I want to see Categories List on Home page
  So that I can select and Navigate to those categories Page
  @Bookspage
Scenario: In the home page user can see the Books category on the left panel
  Given User is in the home page
  When User selects the Books category
  Then User should navigate to the Books category page
  And User should see the list of products
  And User should see the '<Filters>'

  |Filters|
  |sort by|
  |Display|
  |View as|

  @Sortby
  Scenario Outline: Apply Sortby Filter
  Given User is in the books category page
  When User selects the Sort by'<sortby>' from the list of positions
  Then products should be seen in "<order>"order
Examples:
|sortby|order|
|Position|PositionZ|
|Name:A to Z|Ascending order alphabetically|
|Name:Z To A|Descending order alphabetically|
|Price:Low to High |Price decending order|
|Price:High to Low |Price ascending order|
|Created on|latest date|


    @Display
  Scenario: Apply Display Filter
    Given User is in the books category page
    When User choose Display'<Display>'from the list of Display
    Then user should see the no. of products '<Display>' per page
    |Display|
    |4|
    |8|
    |12|

  @view
    Scenario: Apply View as Filter
      Given User is in the books category page
      When User choose view "<view>" from the view list of view
      Then he should be able to view the products in "<view>" view
      |view|
      |Grid|
      |List|

    @viewandDisplay
      Scenario Outline: user can select different no of products on different view
        Given User is in the books category page
        When User choose Display'<DisplayItems>'from the list of the number of products
        And User choose'<ViewFormat>' from the view list
        Then User should be able to see the no.of products'<DisplayItems>'per page as per selected'<ViewFormat>'view
     Examples:
      |DisplayItems|ViewFormat|
       |4|Grid|
       |4|List|
       |8|Grid|
       |8|List|
       |12|Grid|
       |12|List|






