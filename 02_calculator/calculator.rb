#write your code here
def add num1 num2
  num1 + num2
end

def subtract num1 num2
  num1 - num2
end

def sum array1
  total = 0
  array1.each do |num|
  total = total + num
  return total
end

def power base power
  base**power 
end

def factorial num
  i = num
  fact = num
  while i > 1
    i = i -1
	fact = fact * i
  end
  return fact
end