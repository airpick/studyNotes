# Test Methods and Strategies
======

## Table of Contents
1. Overview
2. Reporting Methods
  * Test Cases
  * Test Matrices
3. Test Methods
  * Full
  * Smoke
  * Sanity
  * Regression
  * Risk-based
  * Negative

## Overview
The purpose of this page is to help inform new and experienced QA members on the different types of test methods and strategies which can be leveraged for a project. 
Successfully ascertaining the impact of each release and the test coverage needed to ensure product stability is crucial for QA resource management.

Before outlining the level of coverage leveraged for each test method, we will first review how tests can be recorded/reported.

Additionally, I recommend reviewing this White-Box vs Black-Box document. 
The time in execution for each of these test methods and coverage of features may vary based on the approach used for your project. 

## Reporting Methods
### Test Cases
Individual Test Cases are written so that any one scenario could be tested in isolation. 
There are a number of factors which converge to make a complete Test Case, which are outlined in Writing Good Quality Test Cases.

When Test Cases are compiled together, they form a Test Suite.

Test Suite's can be leveraged in Test Runs or Milestones to provide good reporting methods and a strong overview of the current status of each product being tested. 

#### How to Generate a Report 
Please note that these methods are only necessary if the client in question does not have access to Xevo's Internal TestRails. 

1. Print the page in TestRails, then take the output and instead export it as a .pdf file. 
2. Export to an .xlsx spreadsheet and populate a column with test results based on current result values.

### Test Matrices
A Test Matrix provides a brief, high-level overview of features and uses ad hoc Test Methods to ensure system stability. 

Matrices have less direction, as explicit Test Cases are not used to inform the tester of each step which needs to be performed in order to assure quality.
However, in the hands of an experienced tester this method can be incredibly affective. 

Best used in after-deployment scenarios, and should never be the sole method of confirming a major Milestone's features.

#### How to Generate a Report
1. Export the page as a .pdf file. 
2. Copy the tables into an .xlsx spreadsheet. 

## Test Methods
### Full
* All features are tested to their fullest extent or limit. 
* This should only be performed using a full test suite / test cases.

### Smoke
* Performed only after a product's release to confirm the functionality of critical systems/components. 
* Cost effective way to ensure no Critical or Blocking issues occur.
* The term originates from testing air-tight products, where the team would perform a final confirmation of the product's stability by pumping smoke into it and ensuring no smoke would escape.

### Sanity
* Performed after receiving minor changes in code or functionality.
* Used to ascertain bugs have been fixed and no further issues were introduced due to these changes.
* Often applied to confirm the resolution of an individually ticketed item.
### Regression
* Confirms behavior in existing products to ensure no changes in behavior after a new feature has been implemented.
* Technically speaking, this does not include new feature testing.
* It is good to perform this level of testing at least once per major Milestone delivery after all new features have been developed.

### Risk-Based
* Testing is prioritized to obtain a high level review of quality.
* Prioritization should be weighed based on two major criteria:
* Likelihood of an issue occurring
* Potential impact if a bug occurs with the feature
* Very effective when other more thorough methods would demand more time or resources than can be afforded.
* To perform this method correctly, the Team Leader for the project could preform a Risk Analysis and stack rank/categorize Test Cases accordingly. 

### Negative
* Evaluates that the product behaves as expected when performing tests outside of intended use.
* Error handling is considered a part of Negative testing, as Negative encompasses all non-Happy Path flows.
