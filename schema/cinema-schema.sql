DROP DATABASE if exists cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT,
    email VARCHAR(40) NOT NULL,
    customer_name VARCHAR(50) NOT NULL,
    customer_phoneNo VARCHAR(30) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE cinema (
    cinema_id INT AUTO_INCREMENT,
    cinema_name VARCHAR(40) NOT NULL,
    cinema_address VARCHAR(100) NOT NULL,
    PRIMARY KEY (cinema_id)
);

CREATE TABLE film (
    film_id INT AUTO_INCREMENT,
    film_name VARCHAR(50) NOT NULL,
    duration VARCHAR(20) NOT NULL,
    director VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    PRIMARY KEY (film_id)
);


CREATE TABLE booking (
    booking_id INT AUTO_INCREMENT,
    fk_cinema_id INT,
    ticket_price DECIMAL(10,2) NOT NULL,
    date_of_booking DATE NOT NULL,
    date_of_showing DATE NOT NULL,
    cinema_screen TINYINT NOT NULL,
    fk_customer_id INT,
    fk_film_id INT,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (fk_cinema_id) REFERENCES cinema(cinema_id),
    FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (fk_film_id) REFERENCES film(film_id)
);
