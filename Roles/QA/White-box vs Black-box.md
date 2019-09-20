# White-box vs Black-box
======

## Table of Contents
1. What is the Difference?
  * An Example
2. Common Bugs
  * Black-box
  * White-box
3. Testing Techniques
  * Black-box
  * White-box
4. How Does This Impact Test Planning?
5. Which Should I Choose?

## What is the Difference?
The box part of these phrases refers to all components which allow your product to function as intended.
Here is a quick summary of approach each method provides:

* **Black-Box**
  The black-box testing method is utilized when the internal implementation of the product is not known to the tester.
  The tester will experience the product at the same level that the consumer will, the user interface.
* **White-Box**
  The focus for white-box testing is all inner-workings of a product.
  This includes the product's interactions between each of its components, such as between a mobile application and server.

### An Example
Let's presume the tester has a mobile application which requires a test pass. 
Some of the pages in the application will require an API to provide data before content will display on the page. 

**For white box testing**, they will be able to call the API and review its content directly to ensure accuracy.
The tester would also understand the underpinnings of the mobile application itself.
If an error were to occur, the tester could triage the issue based on the following:

* The response code of the API
* The API response body
* Logs from the mobile application

The tester may even build the mobile application themselves or provide code review to confirm UI implementation during screen transition and expected page display.

**For black box testing**, a test case would fail only if the page displayed in an incorrect format. 
A quick comparison with a spec document would be able to easily illustrate the visual representation of the error.

## Common Bugs
### Black-Box
* Incorrect or missing functionality
* Interface / Visual errors
* Behavioral issues
* Initialization errors
* Termination errors

### White-Box
* Incorrect or missing values
* Response Code errors
* Response Body errors
* Termination errors

## Testing Techniques
### Black-Box
* **Equivalence Class**
  Test Cases are designed to exercise one representative member of each partition. 
  If you consider a field which can accept integer inputs, this technique would test a negative, positive, and zero for this field to ensure each partition of possible entries behaves correctly.
* **Boundary Value**
  Focuses on values on the boundaries of any range.
* **Decision Table**
  This provides a visual representation of actions which can be performed based on a set of conditions.
* **State Transition**
  Confirms how a UI transitions from one page to another.
* **Use Case**
  These are typically driven based on user interaction and hands-on experience.

### White-Box
* **Unit**
  Confirms functionality of each component in isolation.
* **Integration**
  Tests the path/flow between to units.
* **System**
  Tests the paths between subsystems (think: CloudFront integration with an API Gateway on AWS).

## How Does This Impact Test Planning?
As one may imagine, Black-Box testing will allow a tester to more quickly review a single end product. 
A White-Box approach, on the other hand, will greatly aid the triage process and point developers directly to issues with implementation.

Since White-Box is also generally approached more during Stage 4 - Building, it is also prone to having greater volatility in its test cases.
This is due to features changing at a rapid pace and the impact of this should be considered when weighing these methods.

## Which Should I Choose?
Generally speaking, White-Box testing is best utilized during a product's early developmental lifecycle.
At this time, bugs are more prevalent and developers are generally still burdened with design alongside maintenance.
White-Box testing is also more ideal as a candidate for automation, as there are more strict requirements and expected results for each test case.

Black-Box testing is an absolute must before reaching `Stage 6 - Deployment`. 
Each release of a product to a client must have the product reviewed as it would be in the eyes of the product's end-user.
Black-Box testing is also beneficial for use with testers who are not Subject Matter Experts (SMEs). 

There are a number of potential benefits to each approach, and inevitably it is the burden of the Team Lead for any project to weigh and determine which approach should be applied.
