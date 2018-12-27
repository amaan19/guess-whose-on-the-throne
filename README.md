# Guess Whose on the Throne

This is a simple Command Line Interface game whereby the user will have to guess which character has been selected at random from an external Game of Throne API.

## Project Requirements

1.  Access a Sqlite3 Database using ActiveRecord.
2.  You should have at minimum three models including one join model. This means you must have a many-to-many relationship.
3.  You should seed your database using data that you collect either from a CSV, a website by scraping, or an API.
4.  Your models should have methods that answer interesting questions about the data. For example, if you've collected info about movie reviews, what is the most popular movie? What movie has the most reviews?
5.  You should provide a CLI to display the return values of your interesting methods.  
6.  Use good OO design patterns. You should have separate classes for your models and CLI interface.

## Game Functionality

1.  User has to guess character/player based on statements/attributes about the character/player ⇒ like Guess Who??
2.  User starts with x points
3.  User can either submit an answer or reveal an attribute
4.  Incorrect answer loses x points

## Models

1.  Quiz
2.  Question
3.  Scores (joins)

## Optional Complexity

1.  User given score at end inserted into a leaderboard
2.  User accounts to track guesses, win-loss etc 
          ==> Identify user by name and password
          ==> Make sure the user doesn’t get the same character/player
3.  Different difficulties
4.  Wrong spelling correction, either: (i)  Key-value method,  (ii)  Array-split-sort method 
5.  Clue per answer - will need to manually add this column
6.  Knowledge based application seperate of the game where user can learn through certain commands 
