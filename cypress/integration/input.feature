Feature: Calculate borrowing estimate 


Background:
    Given user is on ANZ personal homeloan  page


   Scenario Outline: 1 Calculating borrowing estimate for single with zero dependants
        When user enters details for the estimate calculation
         | type         | <type>           |
      | dependants          | <dependants>         |
      | property_for | <property_for>    |
      | income              | <income>             |
      | other_income        | <other_income>       |
      | living_expenses     | <living_expenses>    |
      | current_home_loan   | <current_home_loan>  |
      | other_loan_payments | <other_loan_payment> |
      | other_commitments   | <other_commitment>   |
      | credit_card_limit   | <credit_card_limit>           |

      And user clicks on "<estimate_button>" button
      Then borrowing estimate amount "<estimatedBorrowingAmount>" should be displayed on the page
       

         Examples:
      | type | dependants | property_for          | income | other_income | living_expenses | current_home_loan | other_loan_payment | other_commitment | credit_card_limit |estimate_button|estimatedBorrowingAmount|
      | Single   | 0         | Home to live in| 80000  | 10000        | 500             | 0                 | 100                | 0                | 10000    |.borrow__calculate > .btn|467,000|


       Scenario Outline: 2 Verifying error message for less living expenses
        When user enters living expenses amount "<living_expenses>"
        And user clicks on "<buttonName>" button
        Then error message "<errorMessage>" should be displayed on the page

        Examples:
        |living_expenses|buttonName|errorMessage|
        |1|.borrow__calculate > .btn|Based on the details you've entered, we're unable to give you an estimate of your borrowing power with this calculator. For questions, call us on 1800 100 641.|

     Scenario Outline: 3 Verifying clear form on clicking startOver button
        When user enters living expenses amount "<living_expenses>"
        And user clicks on "<button1>" button
        And user clicks on "<button2>" button
        Then error message  "<errorMessage>" and living expenses "<living_expenses>" should be removed on the page
        Examples:
        |living_expenses|button1|button2|errorMessage|
        |1|.borrow__calculate > .btn|.borrow__error > .box--right > .start-over|Based on the details you've entered, we're unable to give you an estimate of your borrowing power with this calculator. For questions, call us on 1800 100 641.|
 
 