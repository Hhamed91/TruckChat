DROP DATABASE TruckChat_db;
CREATE DATABASE TruckChat_db;

/* Connect to a database*/
USE TruckChat_db;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT, /* NOT NULL means that this column can not be empty, and it is called a constraint */
    user_name VARCHAR(255),
    user_type VARCHAR(255),
    email VARCHAR(255),
    phone INT(10),
    user_password VARCHAR(10000),
    PRIMARY KEY(id) /* if you don't do line 14, you get an error */
);

CREATE TABLE messages (
    id INT NOT NULL AUTO_INCREMENT,
    messages VARCHAR(255),
    msg_time timestamp,
    FOREIGN KEY (user_id) REFERENCES user(id),
    PRIMARY KEY (id)
);


CREATE TABLE chat_data (
    id INT NOT NULL AUTO_INCREMENT, /* NOT NULL means that this column can not be empty, and it is called a constraint */
    locations VARCHAR(255),
    addresses VARCHAR(255),
    time_stamp timestamp,
    bill_of_lading VARCHAR(255),
    seal_number VARCHAR(255),
    PRIMARY KEY(id), /* if you don't add this line, you get an error */
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (messages_id) REFERENCES messages(id),
);


