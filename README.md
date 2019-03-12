# Bank Tech Test

## Introduction
This is a teach test practice that is part of Makers course material in week 10. Original instructions can be found [here](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

The task is to build a bank-like app, in which a user can manage his/her account.

### Requirements
- able to interact with the code via a REPL like IRB.
- Have deposits and withdrawal functions.
- Can print account statement that includes date, amount, balance.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

I have translated the above requirements into user stories as following.


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
## Approach

#### Technology
Ruby version 2.5.1 - language <br>
Rspec - testing <br>
Rubocop - styling and style checking <br>
Git - version control <br>

#### Process
First in the planning stage, I drew class model so that I have a rough idea of classes and their associate functionalities I should build.

Then I set-up the development environment including the installation of the required Gems.

Next, I wrote the tests according to the specifications. I started with the simplest and the most fundamental functionalities need to be implemented, i.e. the `Account class` and `deposit` function. Then I slowly added complexity to the app, by including `withdrawal`, `print statement` and so on.

During the development process I followed the red-green-refactored cycle. I tried to pass test in the simplest way, then refactored and delegated tasks to classes when I see the need.

#### Class Model

|Class|Functionality|
|:----|:----|
|Account|take deposit, allow withdrawal, record balance, store transactions|
|Statement| record transactions (include date, credit, debit, and balance)|
|Printer|print statement|

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

In your `spec-helper.rb` include the following lines
```
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])

SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mRun also rubocop to improve your styling!\e[0m"
  end
end
```

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
jessicaleung (master) bank_tech_test $ rspec
..........
Run also rubocop to improve your styling!


Finished in 0.02478 seconds (files took 0.29948 seconds to load)
10 examples, 0 failures


COVERAGE: 100.00% -- 84/84 lines in 4 files
```
#### Styling with rubocop

You can run `rubocop` to check for styling offences and run `rubocop --auto-correct` to auto correct them. Click [here](https://rubocop.readthedocs.io/en/latest/basic_usage/) for more information on command flags.

#### Using your Account
To run the code in an irb type `irb -r "./lib/account.rb".`
The code below demonstrates how you can open a new account, save money/ withdraw money, and print your statement.
```
2.5.1 :001 > my_account = Account.new
 => #<Account:0x00007ffe19146670 @balance=0, @statements=[]>
2.5.1 :002 > my_account.deposit(1000)
 => [#<Statement:0x00007ffe19132828 @date="12/03/2019", @credit="1000.00", @debit="", @balance="1000.00">]
2.5.1 :003 > my_account.withdraw(500)
 => [#<Statement:0x00007ffe19132828 @date="12/03/2019", @credit="1000.00", @debit="", @balance="1000.00">, #<Statement:0x00007ffe1913e998 @date="12/03/2019", @credit="", @debit="500.00", @balance="500.00">]
2.5.1 :004 > my_account.print_statement
date || credit || debit || balance
12/03/2019 ||  || 500.00 || 500.00
12/03/2019 || 1000.00 ||  || 1000.00
```
