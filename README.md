## RSpec Basics

### Intro
Welcome to using RSpec! Here's a short intro to getting up to speed. If you're here after using [m-spec](https://github.com/dearshrewdwit/m-spec), it was designed to help you quickly get to grips with RSpec. RSpec is an industry-standard tool for teams using Ruby, it's fully featured, well-documented, and helps you keep your test code DRY.

The trade-off for keeping code DRY is abstraction, and it can be tough for beginners to grapple with a lot of abstraction. So this repository is aimed for you to play with and learn by doing. Write specs, run the specs, read the comments in the files, explore and have fun! :)

### Quick Setup

- `mkdir [dirname]` to create a new project directory
- `cd` into the directory
- `bundle init` to add a Gemfile
- `bundle add rspec` to add rspec
- `rspec --init` to initialise the framework

### Inquiry Projects

#### 1.  What is the purpose of initial files that were created?
How can you run your tests with common options like colour and formatted output?
```
create   .rspec
create   spec/spec_helper.rb
```

#### 2. Write a simple spec
In a new project directory, initialise RSpec and use it to write a simple spec. If you need inspiration, write your own spec for [Animal#roar](lib/animal.rb).

#### 3. Use RSpec mocks in a spec

Practice using RSpec's `double()` method. Write down your observations. Run `irb` and play around with the methods. Or use `pry` to [pause your code path](https://medium.com/@eddgr/the-absolute-beginners-guide-to-using-pry-in-ruby-b08681558fa6) during a test run and explore.

#### 4. Investigate

- How RSpec helps keep [tests independent](spec/tests_should_run_independently_spec.rb)
- The difference between [let and let!](spec/let_and_let!_spec.rb)
- When to use [before](spec/before_spec.rb) blocks

#### Resources

- [Official RSpec documentation](https://relishapp.com/rspec/)
- [RSpec best practice guidelines](https://www.betterspecs.org/)

#### Usage Notes
1. RSpec adds the `lib` directory to the load path if it's available, so you can use the require method relative from it - eg: [simple usage spec](spec/simple_usage_spec.rb)
2. RSpec has it's own spec runner, so running `rspec` by itself runs all the specs it finds.
3. NB: RSpec will automatically try to find any spec in your `spec` directory named `*_spec.rb` - pay attention to your file names.
4. To run an individual file, pass the filepath `rspec spec/tests_should_run_independently_spec.rb`
5. To run an individual test, pass the filepath and linenumber `rspec spec/tests_should_run_independently_spec.rb:17`
