
const mysql = require('mysql');

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: "employee_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("Connected to MySQL server!");

  // Create table
  const createTableQuery = "CREATE TABLE employees (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), job_title VARCHAR(255))";
  connection.query(createTableQuery, function (err, result) {
    if (err) throw err;
    console.log("Table 'employees' created");

    // Insert data
    const insertQuery = "INSERT INTO employees (name, job_title) VALUES ('John Doe', 'Developer')";
    connection.query(insertQuery, function (err, result) {
      if (err) throw err;
      console.log("New employee added");

      // Select data
      const selectQuery = "SELECT name FROM employees";
      connection.query(selectQuery, function (err, result) {
        if (err) throw err;
        console.log("Employee names:", result);

        // Update data
        const updateQuery = "UPDATE employees SET job_title = 'Senior Developer' WHERE name = 'John Doe'";
        connection.query(updateQuery, function (err, result) {
          if (err) throw err;
          console.log("Employee 'John Doe' job title updated");

          // Delete data
          const deleteQuery = "DELETE FROM employees WHERE name = 'John Doe'";
          connection.query(deleteQuery, function (err, result) {
            if (err) throw err;
            console.log("Employee 'John Doe' deleted");

            // Close connection
            connection.end(function(err) {
              if (err) throw err;
              console.log("Connection closed");
            });
          });
        });
      });
    });
  });
});

