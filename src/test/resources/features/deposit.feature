Feature: deposit
  As a customer
  I want to deposit money to my account

Scenario Outline: deposit with an exsiting account balance
  Given a customer with id 1 and pin 111 with balance 200.00 exists
  When I login to ATM with id 1 and pin 111
  When I deposit <amount> in my bank account
  Then my account balance is <value>
  Examples:
    | amount | value |
    | 0 | 200.00 |
    | 500.00 | 700.00 |
    | 1000.00 | 1700.00 |