import { Given ,And, Then} from "cypress-cucumber-preprocessor/steps";

const url = "https://www.anz.com.au/personal/home-loans/calculators-tools/much-borrow/";

Given(`user is on ANZ personal homeloan  page`, () => {
  cy.visit(url);
});
When(/user enters details for the estimate calculation$/,async(table)=>{
  var formVals = table.rowsHash();
  console.log(formVals);
 
  cy.contains(formVals.type).click();
  cy.get("select").select(formVals.dependants);
        cy.contains(formVals.property_for).click();
       
        cy.get('input[aria-labelledby="q2q1"]').type(formVals.income);
        
        cy.get('input[aria-labelledby="q2q2"]').type(formVals.other_income);
       
        cy.get('input[aria-labelledby="q3q1"]').type(formVals.living_expenses);
     
        cy.get('input[aria-labelledby="q3q2"]').type(formVals.current_home_loan);
   
        cy.get('input[aria-labelledby="q3q3"]').type(formVals.other_loan_payments);
      
        cy.get('input[aria-labelledby="q3q4"]').type(formVals.other_commitments);
  
        cy.get('input[aria-labelledby="q3q5"]').type(formVals.credit_card_limit);

        
  
})
And(/user clicks on "([^*]*)" button/,async(button)=>{
console.log(button)
  cy.get(button).click();

})
Then(/borrowing estimate amount "([^*]*)" should be displayed on the page/,async(value)=>
{
  cy.contains(value).shouldbe(value);
})

when(/user enters living expenses amount "([^*]*)"/,async(value)=>{

  cy.get('input[aria-labelledby="q3q1"]').type(value);

})


Then(/error message "([^*]*)" should be displayed on the page/,async(value)=>
{
  cy.contains(value).shouldbe(value);
})

when(/user enters living expenses amount "([^*]*)"/,async(value)=>{

  cy.get('input[aria-labelledby="q3q1"]').type(value);

})



Then(/error message  "([^*]*)" and living expenses "([^*]*)" should be removed on the page/,async(error,amount)=>
{
 cy.contains(error).shouldbe(false);
 cy.contains(amount).shouldbe(false);
})

