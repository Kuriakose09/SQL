create table borrower (book_id int primary key AUTO_INCREMENT,title text);
create table borrower (id int primary key AUTO_INCREMENT,name varchar(40),book_id int,foreign key book_id references books(book_id));
INSERT into books (title) VALUES ('The Alchemist'),
('The Power of Now'),
('Think and Grow Rich'),
('Clean Code');
INSERT INTO borrower (id,name,book_id) VALUES (101,'Alice',1)
,(102,'Bob',2);
INSERT INTO borrower (name) VALUE ('Charlie ');

-- #Show the list of all books along with the name of the person who borrowed them (if borrowed).
SELECT books.title,borrower.name FROM books inner JOIN borrower ON books.book_id = borrower.book_id;

-- #Show the list of all borrowers along with the book details they borrowed (if any).
SELECT borrower.name,books.* FROM books INNER JOIN borrower ON books.book_id = borrower.book_id; 

-- #Show the list of all books that have not been borrowed by anyone.
SELECT books.title FROM books LEFT JOIN borrower on borrower.book_id= books.book_id WHERE borrower.book_id is null;

-- #Show the list of all borrowers even if they haven't borrowed any book.
SELECT name FROM borrower;
