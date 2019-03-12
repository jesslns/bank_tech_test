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
I would like to record my transaction with date, amount, balance
so that I can check my cash flow.
```
```
As a user,
I would like to see my each of my balance entry in chronological order
so that I can see my most recent transactions at the top of my account statement.
```
### Class Model

|Class|Method|
|:----|:----|
|Account|deposit, withdrawal, store_balance, print_statement|
|Statement|date, credit, debit, balance|

## Instructions

### Project Set-up
#### Install Ruby Gems
To install ruby gems for this project run `touch Gemfile` in your terminal, and in your `Gemfile`, write the following lines:
```
source 'https://rubygems.org'

ruby '2.5.1'

gem 'rspec'
gem 'rubocop', '0.56.0'
gem 'simplecov', require: false, group: :test
gem 'simplecov-console', require: false, group: :test
```

Run `bundle --install` in your terminal to install the ruby gems that are specified in the Gemfile.

#### Set-up Test Environment
To set up the test environment, run `rspec --init` in your terminal. and a `/spec` file with a `spec_helper.rb` file are generated.

#### Directory Structure
At your project directory type `mkdir lib` in your terminal to create a `/lib` directory where you store all your models. your project directory should look like the diagram below:
```
lib
├── account.rb
├── statement.rb

spec
├── account_spec.rb
├── statement_spec.rb

Gemfile
README.md
```

### Usage

#### Running the Test
Run the test by typing `rspec`in the terminal, the following is an example when all the tests passed.
```
jessicaleung (master *) bank_tech_test $ rspec
..........

Finished in 0.01304 seconds (files took 0.15346 seconds to load)
10 examples, 0 failures
```
#### Styling with rubocop

You can run `rubocop` to check for styling offences and run `rubocop --auto-correct` to auto correct them. Click [here](https://rubocop.readthedocs.io/en/latest/basic_usage/) for more information on command flags.

#### Using your Account

You can open a new account, and save money/ withdraw money as below,
```
2.5.1 :001 > my_account = Account.new
 => #<Account:0x00007fc3399fa9f8 @balance=0, @statements=[]>
2.5.1 :002 > my_account.deposit(1000)
 => [#<Statement:0x00007fc3399eece8 @date="12/03/2019", @credit=1000, @debit=nil, @balance=1000>]
2.5.1 :003 > my_account.withdraw(500)
 => [#<Statement:0x00007fc3399eece8 @date="12/03/2019", @credit=1000, @debit=nil, @balance=1000>, #<Statement:0x00007fc3399eaf08 @date="12/03/2019", @credit=nil, @debit=500, @balance=500>]
```

#### Built with

Ruby version 2.5.1 - language
Rspec - testing
Rubocop - styling and style checking
Git - version control
