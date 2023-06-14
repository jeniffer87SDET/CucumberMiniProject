Feature: Purchase Ticket Functionality

  Scenario Outline: Verify a user can purchase a ticket
    Given user navigates to purchase page "https://blazedemo.com/purchase.php"
    When user enters  Full Name "<full name>"
    And user enters Address "<address>"
    And user enters City "<city>"
    And user enters State "<state>"
    And user enters ZipCode "<zipcode>"
    And user selects Card Type "<cardType>"
    And user enters Card Number "<cardNumber>"
    And user enters Card Month "<cardMonth>"
    And user enters Card Year "<cardYear>"
    And user enters Name on the card "<nameOnCard>"
    And user clicks on Remember me checkbox button
    And user clicks on Purchase Flight button
    Then user verifies message confirmation "<message>"

    Examples: 
      | full name      | address     | city        | state | zipcode | cardType         | cardNumber          | cardMonth | cardYear | nameOnCard | message                            |    |
      | Jen Jasim      | 6799 street | spring      | VA    |   33876 | Visa             | 2200 0099 4466 8855 | June      |     2025 | Noor Jasim | Thank you for your purchase today! |    |
      | Meridian Jasim | 7855 drive  | ashburn     | VA    |   22678 | Diner's Club     | 3388 2200 7766 4455 | July      |     2026 | Meroo      | Thank you for your purchase today! |    |
      | Yuliya Pero    | 3345 cicle  | shika       | MD    |   44567 | American Express | 0077 0055 7755 6644 | Feb       |     2028 | Yuliya     | Thank you for your purchase today! |    |
      | Hamza Sdq      | 6655 street | Stirling    | TX    |   77654 | Diner's Club     | 2200 0099 4466 8855 | June      |     2025 | Hamzawi    | Thank you for your purchase today! |    |
      | Zubaidi Mo     | 9988 way    | SprintField | MD    |   66554 | American Express | 3388 2200 7766 4455 | July      |     2026 | Zubaidi    | Thank you!                         |    |
