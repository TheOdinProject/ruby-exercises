# Debugging Exercises Part 2

## Introduction

The second part of the debugging exercises focus on [matrices](<https://en.wikipedia.org/wiki/Matrix_(mathematics)>). We won't get into the details, but you should understand the rows and columns of a matrix.

## Background

The matrix in this exercise is represented by a string with embedded newlines, such as:

```
1 2 3
4 5 6
7 8 9
```

To be more specific, the string with embedded newlines looks like this in Ruby:

```ruby
matrix_string = "1 2 3\n4 5 6\n7 8 9"
```

The above string represents this matrix mathematically:

```
    1  2  3
  |---------
1 | 1  2  3
2 | 4  5  6
3 | 7  8  9
```

Note that the first row and the first column are `1`, _not_ `0`:

- Row 1: `[1,2,3]`
- Row 2: `[4,5,6]`
- Row 3: `[7,8,9]`
- Column 1: `[1,4,7]`
- Column 2: `[2,5,8]`
- Column 3: `[3,6,9]`

## Problem Description

There are bugs scattered throughout the code. It's up to you to find them, fix them, and ensure that the test suite passes. You do not need to worry about the `create_matrix` method; it has been implemented correctly!

We are using [pry](https://github.com/pry/pry) to debug in this exercise. The first breakpoint has already been set using `binding.pry`: can you find it? We added the `binding.pry` statement to the `create_matrix` method!

Even though this method has no bugs, it's a great way to exercise your _debugging muscles_. To get started, open an IRB session in your terminal:

```bash
$ cd ruby_basics/11_debugging # navigate to this exercise's directory
$ irb -r ./exercises/matrix_debugging_exercises.rb # start IRB
```

You will now have access to the IRB and you can call any of the methods in the `matrix_debugging_exercises.rb`. To test our `create_matrix` method, type the following in IRB:

```
irb(main):001:0> create_matrix("1 2 3\n4 5 6\n7 8 9")
```

The code executes until it reaches `binding.pry`:

```
     9: def create_matrix(matrix_string)
    10:   lines = matrix_string.lines.map(&:chomp)
    11:   binding.pry
 => 12:   lines.map do |l|
    13:     l.split(' ')
    14:      .map(&:to_i)
    15:   end
    16: end
```

What can we test here? Let's see what the variable `lines` stores:

```
[1] pry(main)> lines
=> ["1 2 3", "4 5 6", "7 8 9"]
```

Cool! At this `binding.pry` statement, the variable `lines` stores an array of strings: `["1 2 3", "4 5 6", "7 8 9"]`.

## Extra

### The Transpose of a Matrix

Given our matrix:

```
    1  2  3
  |---------
1 | 1  2  3
2 | 4  5  6
3 | 7  8  9

```

The transpose of our matrix is:

```
    1  2  3
  |---------
1 | 1  4  7
2 | 2  5  8
3 | 3  6  9

```

Do you see what happened? The rows of the matrix became the columns of the matrix, and vice versa.
