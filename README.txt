# 🏏 Cricket Match Management System

## 📌 Project Status

✔ Completed Academic Mini Project  
✔ Java OOP Based Application  
✔ JDBC + MySQL Integrated  
✔ Menu Driven Console Application  

---

# 📌 About The Project

The Cricket Match Management System is a small Object Oriented Programming
(OOP) project developed using Java and MySQL database connectivity.
The project is designed to manage cricket tournaments, teams, players,
matches, scorecards, and umpires efficiently through a menu-driven
console application.

This project demonstrates the practical implementation of core Java
Object Oriented Programming concepts such as abstraction, inheritance,
polymorphism, encapsulation, composition, association, exception handling,
and collection framework. The application also uses JDBC connectivity
to store and retrieve data from the MySQL database.

The system provides an organized and efficient way to handle cricket-related
operations and helps in understanding real-world software development
using Java.

---

# 🎯 Objective

The objective of this project is to simplify cricket tournament
management by automating team handling, player management,
match scheduling, score updates, umpire assignment,
and database storage using Java Object Oriented Programming concepts.

---

# 🌍 Real World Application

This system can be used by:

- Cricket Tournament Organizers
- School and College Sports Management
- Local Cricket Clubs
- Practice Tournament Management
- Sports Event Handling Systems

---

# ✨ Features

- Create ODI and T20 Tournaments
- Team Management
- Add Batsman and Bowler
- Schedule Cricket Matches
- Assign Umpires
- Update Match Scorecards
- Display Tournament Details
- Display Match Details
- Display Team Details
- Display Player Details
- Store Data Using MySQL Database
- Exception Handling for Invalid Inputs

---

# ⭐ Key Highlights

- Menu Driven Application
- JDBC Database Connectivity
- MySQL Data Storage
- UML Based Design
- Custom Exception Handling
- Modular Java Classes
- OOP Concept Implementation
- Dynamic Data Management Using ArrayList

---

# 🧠 OOP Concepts Used

| OOP Concept | Implementation |
|-------------|---------------|
| Abstraction | Tournament, Player |
| Inheritance | ODITournament, T20Tournament, Batsman, Bowler |
| Polymorphism | getPlayerDetails() |
| Encapsulation | Private Data Members |
| Composition | Tournament contains Matches |
| Association | Match associated with Teams |
| Exception Handling | CricketException |
| Collections | ArrayList |

---

# 📌 Abstract Classes Used

## Tournament (Abstract Class)

The `Tournament` class is used as an abstract base class to provide
common properties and methods for all tournament types.

### Common Attributes

- tournamentId
- tournamentName
- startDate
- endDate

### Child Classes

- ODITournament
- T20Tournament

This improves code reusability and avoids duplication.

---

## Player (Abstract Class)

The `Player` class is used as an abstract class to represent common
player information.

### Common Attributes

- playerId
- playerName
- age
- nationality
- role

### Child Classes

- Batsman
- Bowler

This allows different player types to implement their own
`getPlayerDetails()` method using polymorphism.

---

# 📊 UML Diagram

The UML diagram represents the complete structure of the project,
including classes, attributes, methods, inheritance, composition,
association, and dependencies used in the system.

## 📌 UML Relationships Used

| Relationship | Description |
|--------------|-------------|
| Inheritance | ODITournament and T20Tournament extend Tournament |
| Inheritance | Batsman and Bowler extend Player |
| Composition | Tournament contains Match |
| Composition | Team contains Players |
| Association | Match is associated with Teams |
| Dependency | Scorecard throws CricketException |
| Association | Match assigns Umpire |

---

# 📌 How UML Diagram Helps

- Provides visual representation of the project structure
- Helps understand relationships between classes
- Simplifies project planning and design
- Improves maintainability
- Makes debugging easier
- Clearly demonstrates OOP concepts

---

# 🖼️ UML Diagram

```markdown
![UML Diagram](screenshots/uml-diagram.png)
```

---

# 🖼️ Screenshots

## Main Menu

```markdown
![Main Menu](screenshots/main-menu.png)
```

## Database Tables

```markdown
![Database](screenshots/database.png)
```

## Program Output

```markdown
![Output](screenshots/output.png)
```

---

# 📁 Project Structure

```text
CricketFinal/
│
├── src/
│   ├── Main.java
│   ├── DBConnection.java
│   ├── CricketDAO.java
│   ├── Team.java
│   ├── Player.java
│   ├── Batsman.java
│   ├── Bowler.java
│   ├── Match.java
│   ├── Scorecard.java
│   ├── Umpire.java
│   ├── Tournament.java
│   ├── ODITournament.java
│   ├── T20Tournament.java
│   └── CricketException.java
│
├── lib/
│   └── mysql-connector-j-8.0.33.jar
│
├── out/
├── cricket_db_setup.sql
├── README.md
└── screenshots/
```

---

# 🗄️ Database Tables

| Table Name | Description |
|------------|-------------|
| tournaments | Stores ODI and T20 tournament details |
| teams | Stores team information |
| players | Stores batsman and bowler details |
| matches | Stores match venue, date, result, and teams |
| scorecards | Stores runs, wickets, and overs |
| umpires | Stores umpire details |

---

# ⚙️ Technologies Used

- Java
- JDBC
- MySQL
- XAMPP
- VS Code

---

# 📋 Program Flow

```text
1  → Create ODI Tournament
2  → Create T20 Tournament
3  → Create Team
4  → Add Players
5  → Schedule Match
6  → Assign Umpire
7  → Update Scorecard
8  → Display Tournament Details
9  → Display Match Details
10 → Display Team Details
11 → Display Player Details
12 → Exit
```

---

# 💻 Sample Input / Output

## ▶️ Create ODI Tournament

### Input

```text
Enter Choice : 1

Tournament ID : 101
Tournament Name : WorldCup
```

### Output

```text
ODI Tournament Created Successfully
Tournament Stored In Database
```

---

## ▶️ Create Team

### Input

```text
Enter Choice : 3

Team ID : 1
Team Name : India
```

### Output

```text
Team Created Successfully
```

---

## ▶️ Add Batsman

### Input

```text
Enter Choice : 4

1. Add Batsman
2. Add Bowler

Enter Type : 1

Player ID : 1
Player Name : Virat Kohli
```

### Output

```text
Player Added Successfully
```

---

## ▶️ Schedule Match

### Input

```text
Enter Choice : 5
```

### Output

```text
Match Scheduled Successfully

Venue : Chinnaswamy Stadium
Date  : 20-05-2026
```

---

## ▶️ Update Scorecard

### Input

```text
Enter Choice : 7

Enter Runs : 180
Enter Wickets : 5
Enter Overs : 45.2
```

### Output

```text
===== SCORECARD UPDATED =====

Total Runs     : 180
Total Wickets  : 5
Overs Played   : 45.2

Result :
India Won
```

---

## ▶️ Display Tournament Details

### Input

```text
Enter Choice : 8
```

### Output

```text
===== ODI TOURNAMENT DETAILS =====

Tournament ID      : 101
Tournament Name    : WorldCup
Number Of Matches  : 10
Format             : 50 Overs
```

---

## ▶️ Exception Handling Example

### Input

```text
Enter Choice : 7

Enter Runs : -50
```

### Output

```text
ERROR CODE : 101
ERROR MESSAGE : Runs cannot be negative
```

---

# 💾 Database Storage Verification

After executing the program, all tournament, team, player,
match, scorecard, and umpire details are stored permanently
inside the MySQL database using JDBC connectivity.

The stored data can be verified using phpMyAdmin.

## 📌 Database Verification Output

```text
===== DATABASE RECORDS =====

Tournament Saved Successfully
Team Saved Successfully
Player Saved Successfully
Match Saved Successfully
Scorecard Saved Successfully
Umpire Saved Successfully
```

---

# ▶️ Program Exit

### Input

```text
Enter Choice : 12
```

### Output

```text
Thank You For Using Cricket Match Management System

All data stored successfully in MySQL database.

Program Exited Successfully.
```

---

# 📌 How The System Works

1. User selects options from the menu-driven application.
2. Java classes create tournament, team, player, and match objects.
3. Exception handling validates invalid inputs.
4. JDBC connectivity stores data into MySQL database tables.
5. Data can be retrieved and displayed anytime.
6. Even after exiting the application, all records remain stored in the database.

---

# 🔮 Future Enhancements

- GUI using Java Swing or JavaFX
- Online Match Tracking
- Authentication System
- Player Ranking System
- Statistics Dashboard
- Web-Based Deployment

---

# 👨‍💻 Author

Developed as an Object Oriented Programming Mini Project
using Java and MySQL Database Connectivity.

---

# 📄 License

This project is developed for educational purposes.

---

# ✅ Conclusion

The Cricket Match Management System successfully demonstrates
the implementation of Java Object Oriented Programming concepts
along with JDBC database connectivity through a real-world
cricket management application.

The project provides practical understanding of software design,
database handling, abstraction, inheritance, polymorphism,
exception handling, and collection framework using Java.