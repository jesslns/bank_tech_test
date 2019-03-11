# Bank Tech Test

## Introduction
This is a teach test practice that is part of Makers course material in week 10.

### User Stories
```
As a user,
I would want to use the deposit service
so that they can save money in the bank.
```
```
As a user,
I would want to be able to withdraw money from a bank
so that I can take some cash out.
```
```
As a user,
I would like to be able to see my account statement
so that I can know about my financial status.
```
```
As a user,
I would like to have date, amount, balance printed on my statement
so that I can check my cash flow.
```
```
As a user,
I would like to see my each of my balance entry
so that I have a record of my cash flow.
```
### Class Model

|Class|Method|
|:----|:----|
|Account|deposit, withdrawal, store_balance, print_statement|

## Instructions

### Project Set-up
##### Install Ruby Gems
To install ruby gems for this project run `touch Gemfile` in your terminal, and in your `Gemfile`, write the following lines:
```
source "https://rubygems.org"

ruby '2.5.1'

gem "rspec"
```

Run `bundle --install` in your terminal to install the ruby gems that are specified in the Gemfile.

##### Set-up Test Environment
To set up the test environment, run `Rspec --init` in your terminal. and a `/spec` file with a `spec_helper.rb` file are generated.
