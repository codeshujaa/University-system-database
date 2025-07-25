# University Database

This is a simple database for a university. It keeps track of students, teachers, classes, and who is taking what.

## What's in the Database
### Database ER Design 

<img width="881" height="922" alt="database_design" src="https://github.com/user-attachments/assets/8ee0c122-8139-4185-838f-e9d29e393da3" />


The database has 6 tables:

- **student** - All the student info like names, addresses, and what they're studying
- **faculty** - Teacher information and contact details  
- **major** - Different subjects you can study (like Math, English, etc.)
- **course** - All the classes the school offers
- **section** - When and where each class meets
- **registration** - Which students signed up for which classes

  

## How to Use This

1. You need MySQL on your computer
2. Make a new database called `UniversitySystem` 
3. Load the SQL file into your database
4. Now you can look at all the data!

## Sample Data

The database comes with fake data for:
- 15 students
- 7 teachers  
- 8 different majors
- 12 courses
- 20 class sections

## Simple Queries You Can Try

**See all students:**
```sql
SELECT * FROM student;
```

**Find students in Business major:**
```sql
SELECT s_first_name, s_last_name FROM student WHERE maj_id = 'BUS';
```

**See the class schedule:**
```sql
SELECT crs_code, days, times, room FROM section;
```

This database is good for learning how databases work!
