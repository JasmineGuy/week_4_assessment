
ARTIST TABLE
    Add 3 new artists to the artist table using INSERT. (It’s already created.)
        INSERT INTO artist(name)
        VALUES
            ('Wood Brothers'),
            ('Lizzo'),  
            ('Lake Street Dive');

    Select 5 artists in alphabetical order.

        SELECT * FROM artist
        ORDER BY name ASC
        LIMIT 5;

EMPLOYEE TABLE
    List all employee first and last names only that live in Calgary.
        SELECT first_name, last_name, city 
        FROM employee
        WHERE city ='Calgary';

        SELECT first_name, last_name
        FROM employee
        WHERE city ='Calgary';

    Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards

        SELECT * FROM employee
        WHERE reports_to =1;

    Count how many people live in Lethbridge.
        SELECT COUNT(*) FROM employee
        WHERE city ='Lethbridge';

INVOICE TABLE    

    Count how many orders were made from the USA.
        SELECT COUNT(*) FROM invoice
        WHERE billing_country ='USA';

    Find the largest order total amount.
        SELECT MAX(total) from invoice;

    Find the smallest order total amount.
        SELECT MIN(total) from invoice;

    Find all orders bigger than $5.
        SELECT invoice_id FROM invoice
        WHERE total < 5;

    Count how many orders were smaller than $5.
        SELECT COUNT(*) FROM invoice
        WHERE total < 5;
   
    Get the total sum of the orders.
         SELECT SUM(total) FROM invoice;

JOIN QUERIES
    Get all invoices where the unit_price on the invoice_line is greater than $0.99.

        SELECT * 
        FROM invoice
        JOIN invoice_line
        ON invoice.invoice_id = invoice_line.invoice_id
        WHERE unit_price >= 0.99;
    
    Get the invoice_date, customer first_name and last_name, and total from all 
    invoices.
        SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
        FROM invoice
        JOIN customer
        ON customer.customer_id = invoice.customer_id;

    
    
    Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
        SELECT customer.first_name, customer.last_name, employee.first_name AS rep_first_name, employee.last_name AS rep_last_name
        FROM customer
        JOIN employee
        ON employee.employee_id = customer.support_rep_id;
    
    
    Get the album title and the artist name from all albums
        SELECT album.title, artist.name
        FROM album
        JOIN artist
        ON album.artist_id = artist.artist_id;