# The Odin Project Ruby Exercises

# About this repository

This repository is a complement to the Basic Ruby course for The Odin Project. It contains a series of basic Ruby exercises alongside pre-written tests that will help guide the student towardsa solution, providing a Test Driven Development experience.

The exercises are meant to be done in the order dictated by their numbers (1, 2, 3...). You can still do them out of order, provided you feel appropiately prepared for them, however using the intended order would be ideal.

# Cloning and installation

Clone this repository to your local machine. To do this, click on the green "Code" button at the top right of list of files and copy the HTTPS link in the prompt. Then, run the following command in your terminal:

    git clone <link>

This will create a folder called 'ruby-exercises' inside the directory you ran the command in.

CD into that folder:

    cd ruby-exercises

Then run the following command:

    bundle install

This folder contains a Gemfile, which tells bundle which gems to install locally and makes them available for use in that directory. In this case, we are installing RSpec, which is a popular Ruby testing framework.

Verify that the installation was succesful by simply running the following command:

    rspec

Which should print a few lines about not finding any examples. This is ok and means it's working!

# Usage

Inside this directory, you will find a 'ruby\_basics' folder. Let's move into it:

    cd ruby_basics

You will find several numbered folders inside. These correspond to each of the different lessonsyou will complete. Start by moving into the 1\_data\_types folder:

    cd 1_data_types

Inside this folder you will find two more folders: one containing each of the exercises in the lesson and one containing each of that exercise's tests. 

You will be running your tests from this folder. To start, simply run the rspec command:

    rspec

RSpec will automatically read the tests from the /spec folder and run them for you. You'll see a very long output in your terminal. Most of them are skipped tests, but the last one is a failed test. This is the one that you will work on first.

This particular test belongs to the String Exercises and is testing the concatenation\_exercise method. To make it pass, let's open the string exercises file in your text editor:

    code exercises/string_exercises.rb

Inside this file you will find the instructions for each of the methods. Read the instructions for the concatenation exercise and write enough code inside the method to make it pass the test. Once you think you're done. run the rspec command again and check that the test passes: the last line should be green in color and read "1 example, 0 failures".

Once that test passes, open the spec file in your text editor:

    code spec/string_exercises_spec.rb

You will find all the tests for the exercises in this file. You'll probably remember that all but one test were being skipped. That's because those tests are prepended by "xit" instead of "it", which causes them to be skipped.

Whenever you succesfully pass a test, your task will be to open the spec file and remove the "x" in "xit" for the next test, then run the tests again. If they fail, you need to change your code so that all thests pass. Otherwise, remove the next "x", and so on.s

Once all the tests for an exercise pass, you're done! You can move on to the next exercise. 
