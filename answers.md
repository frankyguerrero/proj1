# Q0: Why is this error being thrown?
The error is being thrown because Pokemon doesn't exist so it can't be initialized.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemon are randomized with the .sample method. All their trainers are nil.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button that generates a form which submits to the capture url that takes in a pokemon's id and that uses a patch method.

# Question 3: What would you name your own Pokemon?
Mario

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in :back. It isnt a path and does not need a path because it just has to go back to the page that issued the request.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
app/views/layouts/application.html.erb renders layouts/messages which shows the error messages

# Give us feedback on the project and decal below!
Good decal. Learning a lot and great idea to webcast lectures and post slides.

# Extra credit: Link your Heroku deployed app

https://github.com/frankyguerrero/proj1