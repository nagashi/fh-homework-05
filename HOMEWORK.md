# Homework 5 - Object Transformation without Mutation

## Due Date

Thursday, May 2, 2019

## Goals

- The purpose of this homework is to learn about instance method chaining without
  mutating the original object. For example, if we were in `irb`, one can do
  the following:

  ```
  person = Person.new('giovanni')
  puts person # => "giovanni"
  person.titlelize.upcase.reverse.undo # =>"GIOVANNI"
  ```

## Readings and Resources

Single Responsibility Principle (SRP) - https://en.wikipedia.org/wiki/Single_responsibility_principle

Sandi Metz Rules - https://gist.github.com/henrik/4509394

'Solving Problems Breaking It Down' by John Sonmez - https://simpleprogrammer.com/2011/01/08/solving-problems-breaking-it-down

'Ruby Docs' - http://www.ruby-lang.org/en/documentation/

'Method Chaining' - https://www.sitepoint.com/a-guide-to-method-chaining/

## Design Goals

- Your class can be no longer than 100 lines of code.
- Your methods can be no longer than five lines of code.
- You can pass no more than four parameters and you can’t just make it one big hash.
- Your methods should perform a single responsibility.

## Test Driving The Person class

- change directory to the project directory

  ```
  $ unzip fh-homework-05.zip
  $ cd /path/to/fh-homework-05
  $ rm -rf .git
  $ gem uninstall rspec
  $ bundle install
  ```

- implement the following `Person` class methods:

  - to_s - returns to the string representation of our person instance

  - titlelize - converts the first character of the first_name to uppercase

  - upcase - converts all the characters of the first_name to upper case

  - downcase - converst all the characters of the first_name to lower case

  - reverse - reverses the characters of the first_name

  - hyphenize - adds a hyphenize between each character of the first_name

  - undo - reverses the most recent transformation

  Note: transformations should not modify the state of the original Person
  instance. Thus, I would recommend coming up with a data structure
  for maintaining the history of the transformations.

- executing the tests

  - running all the tests

    ```
    $ cd /path/to/fh-homework-05
    $ rspec
    ```

  - running a specific test

    ```
    $ rspec ./spec/person_spec.rb:4 # Person #new
    $ rspec ./spec/person_spec.rb:10 # Person #to_s
    $ rspec ./spec/person_spec.rb:18 # Person #titlelize
    $ rspec ./spec/person_spec.rb:26 # Person #upcase
    $ rspec ./spec/person_spec.rb:34 # Person #downcase
    $ rspec ./spec/person_spec.rb:42 # Person #reverse
    $ rspec ./spec/person_spec.rb:50 # Person #hyphenize
    $ rspec ./spec/person_spec.rb:58 # Person #undo
    ```

    Note: You will not need the comment at the end of the line when
    executing a specific test. For example,

           ```
           $ rspec ./spec/person_spec.rb:4
           ```

## Deliverables

- Please create a repo called `fh-homework-05` on Github.com and push your
  finished work there.

## Have Questions

Please make a reasonable effort to complete the homework prior to our next session. If you have any questions regarding this homework, please do send me a message via Slack.
