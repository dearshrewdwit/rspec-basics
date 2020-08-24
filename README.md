## RSpec Basics

### Quick Setup

`mkdir [dirname]` to create a new project directory
`cd` into the directory
`bundle init` to add a Gemfile
`bundle add rspec` to add rspec
`rspec --init` to initialize the framework

### Inquiry Projects

#### 1.  What is the purpose of initial files that were created?
How can you run your tests with common options like colour and formatted output?
```
create   .rspec
create   spec/spec_helper.rb
```

#### 2. Write a simple spec
In a new project directory, initialize RSpec and use it to write a simple spec. If you need inspiration, write your own spec for [Animal#roar](lib/animal.rb).

#### 3. Use RSpec mocks in a spec

Practice using RSpec's `double()` method. Write down your observations.

#### 4. Investigate

- How RSpec helps keep [tests independent](spec/tests_should_run_independently_spec.rb)
- The difference between [let and let!](spec/let_and_let!_spec.rb)
- When to use [before](spec/before_spec.rb) blocks

#### Resources

- [Official RSpec documentation](https://relishapp.com/rspec/)
- [RSpec best practice guidelines](https://www.betterspecs.org/)

#### Usage Notes
1. RSpec adds the `lib` directory to the load path if it's available, so you can use the require method relative from it - eg: [simple usage spec](spec/simple_usage_spec)
2. RSpec has it's own spec runner, so running `rspec` by itself runs all the specs it finds.
3. NB: RSpec will automatically try to find any spec in your `spec` directory named `*_spec.rb` - pay attention to your file names.
4. To run an individual file, pass the filepath `rspec spec/tests_should_run_independently_spec.rb`
5. To run an individual test, pass the filepath and linenumber `rspec spec/tests_should_run_independently_spec.rb:17`
