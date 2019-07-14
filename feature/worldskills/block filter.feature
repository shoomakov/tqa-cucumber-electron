Feature: "Filters" on user page
  # See block when click on "Filter" on user page 
  Scenario: 
    Given logged user page
    When click on "Filter"
    Then the display describe/hide block "Filter" 
    
    
    
      