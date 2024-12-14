# Online Voting System

## Project Overview

The **Online Voting System** is a web application designed using **JSP (Java Server Pages)** and **MySQL database**, developed within the **Eclipse IDE**. The application provides a user-friendly platform for voting and viewing results in a structured and efficient manner.

## Features

### Home Page
- The landing page of the application.
- Contains two main buttons: **Vote Now** and **Results**.

### Vote Now
- Allows users to cast their vote by selecting a candidate from the available options.
- Upon voting, the system redirects the user to a success page confirming that their vote has been registered.

### Results Page
- Displays the results of the voting process.
- Shows the total votes received by each candidate, highlighting the winner.

## Technology Stack

- **Frontend**: JSP, HTML, CSS
- **Backend**: Java (JSP), MySQL
- **Development Environment**: Eclipse IDE

## Installation Guide

### Prerequisites
- Eclipse IDE installed with Java support.
- MySQL server set up and running.
- A web browser to access the application.

### Steps to Set Up

1. **Clone the Repository**
   ```bash
   git clone https://github.com/PrinceSandal20/online_voting_system.git


2. **Import Project**

- Open Eclipse IDE.

- Go to File > Import > Existing Projects into Workspace.

- Select the cloned repository folder.

3. **Database Setup**

- Open MySQL Workbench or any database client.

- Create a database (e.g., online_voting).

- Import the provided SQL script (database/online_voting.sql) to set up the necessary tables and dummy data.

4. **Configure Database Connection**

- Update the database connection details in the dbconfig.jsp file (e.g., username, password, database name).

5. **Run the Application**

- Right-click on the project in Eclipse.

- Select Run As > Run on Server.

- Open your browser and navigate to http://localhost:8080/online-voting.

## Application Workflow

## Home Page:

- Users can navigate to either the Vote Now or Results page.

## Vote Now:

- Users select a candidate and submit their vote.

- Upon successful voting, a confirmation page is displayed.

## Results:
 
- Users can view the voting results.

- Displays the total votes for each candidate and highlights the leading candidate.

# Screenshots and Demo

## Home Page
![index_page](https://github.com/user-attachments/assets/16719c9f-99bc-4f22-b19e-1ea05da5cda3)



## Vote Now Page

![vote_page2](https://github.com/user-attachments/assets/667d83eb-62e0-4ffb-ab3a-205dc0760172)

![vote jsp](https://github.com/user-attachments/assets/a3ffb3b5-7e10-4265-87eb-c4cab59a05c8)

## Success Page


![success_page](https://github.com/user-attachments/assets/e8ea751b-0036-43e6-aba7-2b26c46e2a47)

## Results Page


![result_page](https://github.com/user-attachments/assets/274777ea-7c74-4ce1-89df-5a1b9742a771)

## Demo Video



https://github.com/user-attachments/assets/f5fcace2-fe9d-4850-adde-09304985f9ef



## Note: Replace the dummy images and video link with actual content as needed.

## Contribution

- Feel free to fork this repository and make enhancements. If you have suggestions or find any bugs, please open an issue or submit a pull request.


## Author: Prince
- Thank you for exploring the Online Voting System!
