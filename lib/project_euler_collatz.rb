def even_next(n)
  n / 2
end

def odd_next(n)
  (3 * n) + 1
end

def next_value(n)
  n.even? ? even_next(n) : odd_next(n)
end

def collatz(n)
  a = [n]
  while n != 1
    a << n = next_value(n) # cool did not know you could do this
  end
  a

  # recursion takes too long
  # a = [n]
  # if n == 1
  #   return a
  # else
  #   b = next_value(n)
  #   a << collatz(b)
  #   a.flatten
  # end
end

def longest_collatz
  biggest_size = 0
  biggest_start = 0
  x = 999999
  while x > 0
    y = collatz(x).length
    if y > biggest_size
      biggest_size = y
      biggest_start = x
    end
    x -= 1
  end
  biggest_start
end