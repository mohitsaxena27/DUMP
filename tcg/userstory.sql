USE `tcg`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `userstory`;
CREATE TABLE `userstory` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `detail` longtext,
  `reference_key` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `stage` int DEFAULT NULL,
  `owner` int DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Error_details` longtext,
  `autopilot` tinyint DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `userstory` (`_id`,`project_id`,`detail`,`reference_key`,`status`,`stage`,`owner`,`created`,`updated`,`Error_details`,`autopilot`) VALUES
(1101,103,'User Story:
As a registered user, I want to log in to the application using my credentials so that I can access my account.

Acceptance Criteria:

User should be able to enter username/email and password
System should validate credentials
User should be redirected to dashboard on successful login
Error message should be shown for invalid credentials',NULL,'Completed',4,1,'2026-04-10 06:33:38','2026-04-10 07:13:28','No exception provided',1),
(1102,103,'Verify Login details of application',NULL,'Completed',4,1,'2026-04-16 12:38:55','2026-05-05 12:47:40','No exception provided',0),
(1103,103,'To test password field validation',NULL,'Completed',4,1,'2026-04-20 06:41:19','2026-05-22 12:53:34','No exception provided',0),
(1104,103,'PO In-Transit Creation/Receive In-Transit PO/ Receive In-Transit PO
As a user,
I want to create an in-transit record for a purchase order,
So that I can track shipment movement
I want to receive items from in-transit shipments,
So that inventory is updated correctly
Acceptance Criteria:
Enter PO number
Add shipment details (Container, Vessel, BOL)
Qty shipped updated
In-Transit record created
Receive all or partial items
Qty In-Transit becomes 0
Qty Received updated
Inventory increased',NULL,'Completed',4,1,'2026-04-23 06:52:48','2026-04-23 07:30:04','No exception provided',1),
(1105,103,'Warehouse Transfer
As a user,
I want to transfer inventory between locations,
So that stock can be managed across warehouses

Acceptance Criteria:
Select source & destination
Add items
Generate transfer
Inventory updated at both locations
Intercompany Flow (PPUSA ↔ PPMTL)

As a user,
I want to create intercompany purchase orders,
So that cross-company transactions are handled

Acceptance Criteria:
PO created in PPUSA
SO auto-created in PPMTL
Data sync between both
Qty & Price updated both sides',NULL,'Completed',4,1,'2026-04-23 09:53:39','2026-04-23 10:48:43','No exception provided',1),
(1106,103,'BOM (Cutting/Welding)

As a user,
I want to create BOM for inventory processing,
So that materials can be transformed

Acceptance Criteria:
Cutting BOM created
Welding BOM created
New inventory generated
Inventory history updated
Deferred Revenue Handling

As a user,
I want to manage deferred revenue in orders,
So that financials are handled correctly

Acceptance Criteria:
Deferred revenue invoice generated
Deposit status updated
Invoice reflects correct values',NULL,'Completed',4,1,'2026-04-24 05:45:15','2026-04-28 14:28:43','No exception provided',0),
(1108,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-05-18 09:27:59','2026-05-18 10:15:48','No exception provided',1),
(1109,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-05-22 11:30:31','2026-05-22 12:17:40','No exception provided',1),
(1110,103,'BOM (Cutting/Welding)

As a user,
I want to create BOM for inventory processing,
So that materials can be transformed

Acceptance Criteria:
Cutting BOM created
Welding BOM created
New inventory generated
Inventory history updated
Deferred Revenue Handling

As a user,
I want to manage deferred revenue in orders,
So that financials are handled correctly

Acceptance Criteria:
Deferred revenue invoice generated
Deposit status updated
Invoice reflects correct values',NULL,'Completed',4,1,'2026-05-22 12:54:10','2026-05-22 13:47:58','No exception provided',1),
(1111,103,'BOM (Cutting/Welding)

As a user,
I want to create BOM for inventory processing,
So that materials can be transformed

Acceptance Criteria:
Cutting BOM created
Welding BOM created
New inventory generated
Inventory history updated
Deferred Revenue Handling

As a user,
I want to manage deferred revenue in orders,
So that financials are handled correctly

Acceptance Criteria:
Deferred revenue invoice generated
Deposit status updated
Invoice reflects correct values',NULL,'Completed',4,1,'2026-05-25 05:58:57','2026-05-25 06:51:44','No exception provided',1),
(1124,103,'BOM (Cutting/Welding)

As a user,
I want to create BOM for inventory processing,
So that materials can be transformed

Acceptance Criteria:
Cutting BOM created
Welding BOM created
New inventory generated
Inventory history updated
Deferred Revenue Handling

As a user,
I want to manage deferred revenue in orders,
So that financials are handled correctly

Acceptance Criteria:
Deferred revenue invoice generated
Deposit status updated
Invoice reflects correct values',NULL,'Completed',4,1,'2026-06-26 12:18:20','2026-06-30 10:54:18','No exception provided',0),
(1126,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-06-30 10:47:04','2026-06-30 10:53:00','No exception provided',1),
(1127,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.

',NULL,'Completed',4,1,'2026-06-30 10:56:16','2026-06-30 11:01:23','No exception provided',1),
(1129,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-07-06 06:27:48','2026-07-06 06:33:08','No exception provided',1),
(1130,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-07-06 06:35:47','2026-07-06 06:42:03','No exception provided',1),
(1131,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-07-06 07:54:57','2026-07-06 07:59:50','No exception provided',1),
(1132,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-07-31 16:06:53','2026-07-31 16:19:27','No exception provided',1),
(1133,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-07-31 16:06:58','2026-07-31 16:19:22','No exception provided',1),
(1134,103,'As a business user, I want to log into the IMS application, manage and search orders, create or cancel orders, generate order PDFs, and securely log out so that I can efficiently perform end-to-end order processing activities within the system.

Acceptance Criteria
AC1 – Login Validation

System should display a validation message when an invalid username or password is entered and prevent login access.

AC2 – Logout Functionality

User should be able to log out successfully and get redirected to the login page with the ability to log in again using valid credentials.

AC3 – Order Search and Filters

User should be able to search and filter orders using order details such as Order ID, Customer Name, Customer ID, Project Name, Deposit, and 999 Price filters.

AC4 – Order Creation and Approval

Authorized users should be able to create, save, and approve orders with updated quantity and pricing details, and the order status should update correctly.

AC5 – Order Cancellation

User should be able to cancel Created or Approved orders when no shipping record exists, and the status should update to Cancelled.

AC6 – Order PDF Validation

System should generate Order Status and Order Acknowledgement PDFs containing complete and accurate order information.',NULL,'Completed',4,1,'2026-07-31 16:07:03','2026-07-31 16:20:11','No exception provided',1);

SET FOREIGN_KEY_CHECKS=1;
