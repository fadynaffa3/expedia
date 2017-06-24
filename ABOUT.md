ABOUT
=====

Specifications
--------------
- Language
 - Ruby 2.4.1
- Framework
 - Ruby on Rails 5.1.1
 - `rspec` for testing

- I wrote this web application using Ruby on Rails because I am experienced in its best pracices, its test suite (RSpec) and I believe I leveraged the framework to fulfill the requirements of this exercise.

- I started working on the task using Scala and the Play framework, finishing almost 30% of the task. However, since receiving the update that I can use any other language it was a natural fit to switch to Ruby.

Process
-------
- I used the `httparty` gem to send the http requests instead of the built in `Net::HTTP` library because it would take more time to write the helpers that I need for a tight deadline
- I used the `guard` gem in my TDD workflow as it allowed me to see the failing/passing tests immediately after every update
- HAML was used for templating instead of the traditional ERB as it allows you write cleaner HTML
- jQuery UI was used for the sliders in the filters
- Bootstrap 3 was used for the grids, basic CSS and styles
- I used the `rubocop` styleguide for the Ruby code
- I used `simplecov` to give me a benchmark for test coverage
- I used `travis` as a CI
- I used `heroku` for deployment and hosting
- I activated the CD after the build passes

Challenges and Outcomes
-----------------------

I found it quite interesting to play around with the Expedia API.

I created a service to talk to the API endpoints, so that it would be easier to add any new filters in the future if needed.
Not enough time was spent on the UI because of the time constraints. I preferred to spend more time on writing the tests.
