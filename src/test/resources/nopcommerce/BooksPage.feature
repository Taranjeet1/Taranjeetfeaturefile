Feature: Books Categories Page
  As a user I want to see Categories List on Home page
  So that I can select and Navigate to those categories Page
Scenario outline: In the home page user can see the Books category on the left panel
  Given User is in the home page
  When User selects the Books category
  Then User should navigate to the Books category page
  And User should see the list of products
  And User should see the '<Filters>'
Examples:
  |Filters|
  |sort by|
  |Display|
  |View as|

  @sort by
  Scenario: Apply Sort by Filter
  Given User is in the books category page
  When User selects the Sort by'<sort by>' from the list
  Then products should be seen in '<order>'
  Examples:
|Sort by|Order|
|Position|PositionZ
|Name: A to Z| Ascending order alphabetically|
|Name: ZTo A|Descending order alphabetically |
|Price:  Low to High |Price decending order|
|Price: High to Low |Price ascending order|
|Created on|latest date|

    @sort by
  Scenario: Apply Display Filter
    Given User is in the books category page
    When User choose Display filetr'<Display>'from the list
    Then should see the selected no. of products '<No of products>' per page
    Examples:
    |Display|No of products|
    |4|4|
    |8|8|
    |12|12|

  @sort by
    Scenario: Apply View as Filter
      Given User is in the books category page
      When User choose view as '<View as>' from the list
      Then User should see '<Different View format>' from the list
      Examples:
      |View as|Different View format|
      |Grid|Grid view|
      |List|List view|




