# Week 1 - Homework

*5 points*

### Overview

There's a lot of code in this folder, but you don't have to touch most of it. You only have to modify `maroon_air.rb`.  

Before you do, try it out in your command shell:

`ruby maroon_air.rb /flights`

`ruby maroon_air.rb /flights/2017-06-02/777`

But, there is a problem: some lazy programmer hardcoded everything in
`maroon_air.rb`!  I can prove it! Try this:

`ruby maroon_air.rb /flights/2017-06-01/256`

Notice that you're seeing the wrong information.

### Requirements

Your job is to modify `maroon_air.rb` so that it uses the `Flight` class (already written for you)
to retrieve the correct flight schedule.

Open `maroon_air.rb` and follow the instructions in the "To Do" comments.

Happy coding!

### Rubric

* 2 points for fixing `display_all`
* 2 points for fixing `show_flight_details`
* 1 point for code readability

### But Wait, There's More

1. Read the code in `flight.rb` and make sure you understand every line.
2. Take a look at `db_quiz.pdf` and answer all three questions. If you do not feel confident answering all three questions, please make an appointment with Ben or Rachel to become familiar with the basics of SQL and relational database design.
