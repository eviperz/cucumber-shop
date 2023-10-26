# Jirapa Wongsuwon 6410450761
Feature: Check stock
    As a cashier
    I want to check stock

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Honey" with price 100.00 and stock of 15 exists

Scenario: Buy one product
    When I buy "Honey" with quantity 2
    Then "Honey" left in stock 13

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 2
    And I buy "Honey" with quantity 10
    Then "Bread" left in stock 3
    Then "Jam" left in stock 8
    Then "Honey" left in stock 5