# The Odin Project Ruby Exercises

## About this repository

This repository is a complement to the Ruby course for The Odin Project. It contains a series of Ruby exercises alongside pre-written tests that will help guide the student towards a solution, providing a Test Driven Development experience.

Each set of exercises should only be done **after** being directed to do so in the assignment of the corresponding Ruby lesson. I.e. if you just finished the Basic Data Types lesson you should **only** do the exercises in the `1_data_types` folder for now.

> [!IMPORTANT]
> Please do not submit your solutions as a PR to this repository. Any PR that does this will have to be closed.

## Cloning and installation

Clone this repository to your local machine. To do this, click on the green "Code" button at the top right of list of files and copy the link in the prompt. Then, run the following command in your terminal:

    git clone <link>

This will create a folder called 'ruby-exercises' inside the directory you ran the command in.

CD into that folder:

    cd ruby-exercises

Now before beginning work on the exercises, you'll want to install a gem called RSpec. RSpec is a popular Ruby testing framework that is used in this repository to provide you with tests that check your solutions.

To install RSpec, run the following command in your terminal:

    gem install rspec

You should see a message that says something along the lines of "6 gems installed" in your terminal. Verify that the installation was successful by simply running the following command:

    rspec

Which should print a few lines about not finding any examples. This is ok and means it's working!

If your shell reports that it cannot find the rspec binary, it may be necessary to run the following command:

    rbenv rehash

## Usage

Each directory contains a read me with instructions for the exercises within them.
