-- Drop tables if they already exist
DROP TABLE campaign;
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;

-- create category, subcategory, contacts, and campaign tables
-- and set primary and foreign keys

CREATE TABLE category (
    category_id varchar(200) NOT NULL,
    category_name varchar(200) NOT NULL,
    PRIMARY KEY (category_id)
);

SELECT * from category

CREATE TABLE subcategory (
    subcategory_id varchar(200) NOT NULL,
    subcategory_name varchar(200) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

SELECT * from subcategory

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar(200) NOT NULL,
    last_name varchar(200) NOT NULL,
    email varchar(200) NOT NULL,
    PRIMARY KEY (contact_id)
);

SELECT * from contacts

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(200) NOT NULL,
    description varchar(200) NOT NULL,
    goal numeric NOT NULL,
    pledged numeric NOT NULL,
    outcome varchar(200) NOT NULL,
    backers_count int NOT NULL,
    country varchar(200) NOT NULL,
    currency varchar(200) NOT NULL,
    launch_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(200) NOT NULL,
    subcategory_id varchar(200) NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) references contacts(contact_id),
	FOREIGN KEY (category_id) references category(category_id),
	FOREIGN KEY (subcategory_id) references subcategory(subcategory_id)
);

SELECT * from campaign
