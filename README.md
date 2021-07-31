# The Odin Project Ruby Exercises

## About this repository

This repository is a complement to the Ruby course for The Odin Project. It contains a series of Ruby exercises alongside pre-written tests that will help guide the student towards a solution, providing a Test Driven Development experience.

Each set of exercises should only be done **after** being directed to do so in the assignment of the corresponding Ruby lesson. I.e. if you just finished the Basic Data Types lesson you should **only** do the exercises in the `1_data_types` folder for now.

## Cloning and installation

Clone this repository to your local machine. To do this, click on the green "Code" button at the top right of list of files and copy the link in the prompt. Then, run the following command in your terminal:

    git clone <link>

This will create a folder called 'ruby-exercises' inside the directory you ran the command in.

CD into that folder:

    cd ruby-exercises

Then run the following command:

    bundle install

This folder contains a Gemfile, which tells bundle which gems to install locally and makes them available for use in that directory. In this case, we are installing RSpec, which is a popular Ruby testing framework.

Verify that the installation was successful by simply running the following command:

    bundle exec rspec

Which should print a few lines about not finding any examples. This is ok and means it's working!

## Usage

Each directory contains a read me with instructions for the exercises within them.
