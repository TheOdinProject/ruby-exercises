def factorial(num)
  # write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
  return if num.negative?
  return 1 if num <= 1

  num * factorial(num - 1)
end
