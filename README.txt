This repository contains the database scripts used in the Web API project to perform CRUD operations on the clients contacts details.

The folder contains the DDL and DML scripts to create the database, tables and to insert data into the respective tables.

The main table ClientDetails contains the client's name information - first, middle, last.

The table ClientAddressDetails contains the client's contact information consisting of the physical address (street, city, state and zip) and the client's email address.

The table PhoneDetails contains the information on client's phone details. The client can have the number specified for one or more phone types - Mobile, Home, Work. This information on phone type is configured in configuration table ClientRepoConfig.
