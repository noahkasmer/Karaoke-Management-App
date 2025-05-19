
# Karaoke Song Request Web App 🎤

This is a PHP and SQL-based karaoke request web application created for a CSCI 466 course project at Northern Illinois University.

## Features

- 🎶 Submit song requests via a user-friendly form
- 📋 View and manage requests with real-time updates
- 🎧 DJ interface for controlling playback order and handling requests
- 🛠️ Built using PHP, MySQL, HTML, and basic styling
- 📂 Modular file structure for readability and maintainability

## Project Structure

- `create_db.sql`: SQL script to create and initialize the karaoke database
- `insert_data.sql`: Inserts sample song data into the database
- `karaoke.php`: Main user interface for submitting song requests
- `djinterface.php`: DJ-facing interface for managing requests
- `karaoke_buttons.php`: Backend script for handling DJ actions (next, clear, etc.)
- `karaoke_update_3.php`: Dynamic refresh logic for the request list

## Setup Instructions

1. Import the database:
   - Use `create_db.sql` to initialize your database schema
   - Then run `insert_data.sql` or `insert_data_1_kasmer.sql` to load sample data

2. Place all PHP files on a local or remote server (e.g., XAMPP, NIU student web server)

3. Update credentials if needed in your connection config (e.g., `secrets.php` if used)

4. Open `karaoke.php` in your browser to start submitting songs

5. Use `djinterface.php` to simulate the DJ view

## Notes

- The app uses MySQL for backend data storage and PHP for server-side logic.
- This was a collaborative class project completed in Spring 2025.

## Author

Noah Kasmer  
CSCI 466 – Northern Illinois University  
[GitHub](https://github.com/yourusername) | [LinkedIn](https://linkedin.com/in/your-profile)

---

*This project was built for educational purposes. No karaoke singers were harmed in the making of this app.*
