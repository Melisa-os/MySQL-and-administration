# MySQL-and-administration
### **Task Description for modelf**

Create a database for an electronic system of a company. The system should record information about users, their salaries, and correspondence through messages. The requirements are as follows:

#### **User Information**
Store the following details for users:
- First Name
- Last Name
- Date of Birth
- Email Address
- Username
- Short Biography
- Profile Picture

#### **Salary Information**
Store the following details about salaries:
- Salary Date
- Salary Amount
- The user to whom the salary is paid (link the salary to a specific user)
- Payment Status (whether the salary is paid or not)
- Employment Type (e.g., fixed-term contract, permanent contract)

#### **Correspondence (Messages)**
Store the following details about messages:
- Message content
- Message Date
- Message Status (read or unread)
- Sender and recipient of the message (link each message to two users: the sender and the recipient)

**Note**: Each message must have a sender and a recipient, representing two different users.

#### **Assignment Instructions**
- Use the relational model principles (including primary and foreign keys) covered in Lesson 2.3 as a reference.
- Create a database for this system, along with an **EER diagram** (Entity-Relationship Diagram) to represent entities and dependencies.
- You can start by designing the model first (recommended for realistic planning) and then convert the model into an actual database.

#### **EER Diagram Requirements**
The model must:
- Display all tables, their columns, and data types.
- Clearly indicate primary and foreign keys.
- Show relationships between tables.

#### **Data Population**
After completing the database structure:
1. Add **3 users** to the database.
2. Insert several salary records (at least one salary per user).
3. Add several messages (at least two messages per user).

### **Task Description for sqladm**

For the database created in the first assignment, the following tasks are required:

1. **Define Indexes**  
   - Add indexes where they would be most appropriate to optimize database performance.  
   - Include a Full Text Index where applicable.  

2. **Create a View**  
   - Create a view to display only basic user information, including first name, last name, date of birth, and place of birth.  

3. **Stored Procedures for Users**  
   - Develop stored procedures for deleting, inserting, and updating user data.  

4. **Stored Procedures for Salaries**  
   - Develop stored procedures for inserting, deleting, and updating salary data.  

5. **Stored Procedures for Messages**  
   - Develop stored procedures for inserting, deleting, and updating messages.  

6. **Function for Message Count**  
   - Create a function that, for a given user ID parameter, counts and returns the total number of messages sent by that user.  

---

### **Important Note**
- This task must use the structure from the first assignment and its populated data.  
- You cannot use a different structure or dataset. Ensure that this task builds logically upon the first assignment, including both its structure and data.  
- Do not submit this task for review until the first assignment has been graded and accepted.  
- When submitting this task, ensure that it integrates seamlessly with the first assignment, showing results from both:  
  - **Structure and data from the first assignment**  
  - **Indexes, views, procedures, and functions from the second assignment**.  
