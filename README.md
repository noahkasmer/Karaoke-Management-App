# csci466-project

## Link to access your running project:
Douglas:  
https://students.cs.niu.edu/~z1954599/csci466-project/karaoke.php  

Vincent:  
https://students.cs.niu.edu/~z2047674/csci466-project/karaoke.php  

Ralph:  
https://students.cs.niu.edu/~z1610706/csci466-project/karaoke.php  

Luke:  
https://students.cs.niu.edu/~z2046604/csci466-project/karaoke.php  

Noah:  
https://students.cs.niu.edu/~z1845367/csci466-project/karaoke.php  


# How to setup your dev environment:

## Step 1: Create secrets files
This will keep your database credentials secret, and not include them in the repo. It will also let you point at your own personal database on the CS server.

### Step 1a: Create a `secrets.php` in the following place (a web directory only for you):  
Replace with your zID  
```
/home/www/z0000000/php.inc/
```  
aka /home/www/z0000000/php.inc/secrets.php  

Contents of the `secrets.php` file:
```
<?php
// Database config
$host = 'courses';
$username = 'z0000000'; // your zID
$password = '2024Nov20'; // your birthday
?>
```

### Step 1b: Create a `secrets_link.php` in the following place (the directory that will hold all your php, html, css etc.):  
Replace with your zID  
```
/home/hopper/z0000000/public_html/csci466-project/
```  
aka /home/hopper/z0000000/public_html/csci466-project/secrets_link.php  
(might be turing instead of hopper, depending on which folder exists for you)  

Contents of the `secrets_link.php` file:
```
<?php
include '/home/data/www/z0000000/php.inc/secrets.php'; // Use your zID in the path
$dbname = 'z0000000'; // Use your zID
?>
```

## Step 2: Run the SQL scripts from within MariaDB
Log into MariaDB, and run the `create_db.sql` script, and the `insert_data.sql` script.

## Step 3: Copy any web files over to your public directory (the directory that will hold all your php, html, css etc.)
This includes 'karaoke.php', 'dj.php', any other webpages, external CSS, etc. (not the .sql files)  
Replace with your zID  
```
/home/hopper/z0000000/public_html/csci466-project/
```
