# Cucumber Cypress -BDD Framework

The general tendency of developers is to develop features and write test code later. As, evident in above case, Test Case development for this case is complex and developer will put off Testing till release , at which point he will do quick but ineffective testing.
To overcome this issue (Behavior Driven Development) BDD was conceived. It makes the entire testing process easy for a developer
In BDD, whatever you write must go into Given-When-Then steps

There are many BDD framework tools 

example
1.Cucumber-framework as cool as cucumber 
2.Serenity 
3.Jasmine.

In the above code , the BDD framework used is [Cucumber](https://cucumber.io/), [Cypress](https://www.cypress.io/) is used to UI test runtime automation tool.
The special features of Cypress are
- You can edit your test code in the browser and instantly see it run as you change the code
- It can easily record a video so you can understand what happened when a test failed in your CI.

## Installation

### Pre-requisites
- Nodejs,4.x+
- Visual studio

### npm packages

- cypress
- cypress-cucumber-preprocessor
- cucumber-html-reporter.

or run the below command to install all dependencies

```bash
$npm install
```

## Test

To run the test cases use the below command 
```bash
$npm test
```
or (for cypress UI)
```bash
Cyress open
```
or (for cypress Headless)
```bash
Cyress run
```

## reporter

