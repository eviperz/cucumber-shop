# Jirapa Wongsuwon 6410450761
Feature: Check stock
    As a cashier
    I want to check stock

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total in stock "Bread" quantity 3

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total in stock "Bread" quantity 3
    Then total in stock "Jam" quantity 9