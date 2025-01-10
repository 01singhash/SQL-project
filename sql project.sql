CREATE DATABASE project;
use project;
create table books(
book_id INT primary key,
title VARCHAR(30),
author VARCHAR(30),
genre VARCHAR(30),
published_year YEAR,
copies_available INT
);

drop table books;
INSERT INTO Books (book_id, title, author, genre, published_year, copies_available)
VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 5),
(2, '1984', 'George Orwell', 'Dystopian', 1949, 3),
(3, 'Pride and Prejudice', 'Jane Austen', 'Romance', 2006, 4),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, 2),
(5, 'Moby Dick', 'Herman Melville', 'Adventure', 1990, 1),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 'Classic', 1951, 6),
(7, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 7),
(8, 'Harry Potter', 'J.K. Rowling', 'Fantasy', 1997, 10),
(9, 'The Road', 'Cormac McCarthy', 'Post-apocalyptic', 2006, 3),
(10, 'Sapiens', 'Yuval Noah Harari', 'Non-fiction', 2011, 5);


create table members(
member_id int primary key,
member_name VARCHAR(30),
email VARCHAR(30),
phone VARCHAR(30),

membership_date DATE
);
drop table members;
INSERT INTO Members (member_id,member_name , email, phone, membership_date)
VALUES
(1, 'John Doe', 'johndoe@example.com', '1234567890', '2023-01-15'),
(2, 'Jane Smith', 'janesmith@example.com', '9876543210', '2022-11-20'),
(3, 'Michael Brown', 'michaelbrown@example.com', '4561237890', '2023-03-10'),
(4, 'Emily Davis', 'emilydavis@example.com', '7894561230', '2021-06-30'),
(5, 'David Wilson', 'davidwilson@example.com', '3216549870', '2022-12-25'),
(6, 'Sarah Johnson', 'sarahjohnson@example.com', '6547893210', '2023-05-05'),
(7, 'Robert Moore', 'robertmoore@example.com', '8527419630', '2023-08-19'),
(8, 'Laura Taylor', 'laurataylor@example.com', '9638527410', '2022-10-02'),
(9, 'Chris Anderson', 'chrisanderson@example.com', '7419638520', '2023-07-12'),
(10, 'Sophia Martinez', 'sophiamartinez@example.com', '1597534860', '2021-04-18');
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
INSERT INTO Transactions (transaction_id, book_id, member_id, borrow_date, return_date, status)
VALUES
(1, 1, 2, '2024-01-01', '2024-01-15', 'Returned'),
(2, 3, 1, '2024-01-05', '2024-01-20', 'Returned'),
(3, 5, 4, '2024-01-10', NULL, 'Borrowed'),
(4, 7, 3, '2024-01-08', '2024-01-18', 'Returned'),
(5, 2, 6, '2024-01-12', NULL, 'Borrowed'),
(6, 8, 5, '2024-01-09', '2024-01-19', 'Returned'),
(7, 10, 2, '2024-01-11', NULL, 'Borrowed'),
(8, 4, 7, '2024-01-15', NULL, 'Borrowed'),
(9, 9, 9, '2024-01-14', '2024-01-28', 'Returned'),
(10, 6, 8, '2024-01-13', NULL, 'Borrowed');
SELECT title, author, copies_available
FROM Books
WHERE copies_available > 0;




