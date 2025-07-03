## Dart Programming Problem Batch-11 (Without OOP)

1. **Student Performance System** 
Create a program that accepts a student's name and 5 subject marks from user input. Then calculate the average, assign a grade based on rules (A, B, C, F), and store the result in a Map. Display all students with grade 'A'.

2. **Unique Product Inventory**  
Build an inventory system where users can input product names (Strings) and their quantities. Ensure no duplicate product names using appropriate collection types. Show all products with quantity greater than 10.

3. **Online Voting System**  
Simulate a voting system where users vote for candidates. Store vote counts in a map. Prevent a user from voting more than once (simulate with a set). Display winner candidate.

4. **Task Scheduler**  
Accept tasks from the user with priority levels. Store them in a list of maps. Sort tasks by priority and show only tasks that are not marked "done". Use null safety to handle optional fields.

5. **Shopping Cart with Discount**  
Build a cart where users add product name and price. When user types "done", calculate total. If total > 1000, apply a 10% discount. Handle possible invalid inputs (non-numeric price) with exception handling.

6. Number Classifier  
From a list of user-input integers, classify each number as positive, negative, or zero using a loop. Store classified data in a Map<String, List<int>>. Print each category.

7. Student Database Search  
Create a student record manager using List<Map<String, dynamic>>. Include name, id, age. Let the user search by name or id and return the matching student or show error using try-catch.

  

8. Lottery Winner Picker  
Create a program that accepts names into a Set (to avoid duplicates). After at least 5 entries, randomly pick 2 unique winners. Show them with a congratulatory message.

  

9. Library Book Tracker  
Simulate a library where books are tracked in a map with title as key and quantity as value. Allow borrowing (decrease count) and returning (increase count). Prevent borrowing if quantity is 0.

  

10. Nested Loops Table Generator  
Write a program that takes a number N and generates a multiplication table from 1 to N using nested loops and string formatting. Skip rows where the product is divisible by 7.

  

11. Survey Summary Tool  
Conduct a survey where users rate a service from 1 to 5. Store all ratings in a list. Calculate average rating, most common rating, and show a breakdown of how many users gave each rating.

  

12. Smart Calculator  
Accept user input like `5 + 3` or `10 * 2`. Parse and calculate the result using control flow. Handle divide-by-zero and invalid inputs using try-catch.

  

13. Simple Banking System  
Create a basic banking app where users can deposit and withdraw from multiple accounts (use Map for user balances). Handle overdrafts with a warning and prevent the operation.

  

14. Customer Loyalty Checker  
Create a program where users enter purchase history (a list of amounts). Calculate total, average, and assign loyalty level (Gold/Silver/Bronze). Use functions and switch-case for loyalty logic.

  

15. Employee Filtering  
Given a list of employees with name, age, position, and salary, filter those who are over 30 and earn more than 50,000. Store the result in a new list and display formatted output.

  

16. Word Frequency Counter  
Accept a paragraph from user input. Count the number of occurrences of each word. Use Map<String, int> to track frequency. Sort and display the top 3 most frequent words.

  

17. User Auth System  
Build a login system where username-password pairs are stored in a map. Take user input and verify login. After 3 wrong attempts, block the user.

  

18. Classroom Divider  
Input a list of student names. Divide them evenly into 3 groups using list slicing logic. Print each group in alphabetical order. If a student name is null or empty, skip with a warning.

  

19. Travel Cost Estimator  
Ask the user for destination, travel days, and daily budget. Create a function that returns the total cost. If the budget is insufficient for the trip, suggest an alternate plan.

  

20. Weather Analyzer  
Input 7 days of temperature data. Show highest, lowest, and average temperature. If any value is missing or invalid, handle it gracefully using null safety and try-catch.
