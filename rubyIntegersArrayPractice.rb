#Practice with Integers
#Integers - an array from 0 to 100:

#(0..100).to_a
#Objectives:

#return all odd numbers
#return all even numbers
#return the square of all the numbers
#return the first number whose square is > 350
#return all the numbers whose square is > 350
#return all the numbers, cubed
#return the first number whose cube is > 500
#return all the numbers whose cube is < 500



def make_array(startArrayValue, endArrayValue)
	resultArray = []
	for i in startArrayValue..endArrayValue
		resultArray.push(i)
	end
	return resultArray
end

integers = make_array(0,100)

puts integers

#return all odd numbers
def odd_int(integers)
	odd_num = []
	for i in 0..integers.length()-1
		if integers[i].even?
			next
		else 
			odd_num << integers[i]
		end
	end
	return odd_num
end
odd_intResult = odd_int(integers)
puts 'begining of odd\n'
puts odd_intResult
puts 'end of odd\n'

#return all even numbers
def even_int(integers)
	even_num = []
	for i in 0..integers.length()-1
		if integers[i].even?
			even_num << integers[i]
		else 
			next
		end
	end
	return even_num
end
even_intResult = even_int(integers)
puts 'begining of even\n'
puts even_intResult
puts 'end of even\n'

#return the square of all the numbers
def square_int(integers)
	square_num = []
	for i in 0..integers.length()-1
		square_num[i] = integers[i] * integers[i]
	end
	return square_num
end
square_intResult = square_int(integers)
puts 'begining of square\n'
#puts square_intResult
for i in 0..integers.length()-1
	print "\t#{square_intResult[i]}"
end
puts 'end of square\n'

#return the square of all the numbers > 350
def all_square_bigger_then_350(square_intResult)
  res = []
  c = 0
  for i in 0..square_intResult.length()-1
    if (square_intResult[i] > 350)
      res[c] = Math.sqrt(square_intResult[i])
      
      c = c + 1
    end
  end
  return res
end
all_square_bigger_then_350Result = all_square_bigger_then_350(square_intResult)
puts all_square_bigger_then_350Result

all_square_bigger_then_350First = all_square_bigger_then_350Result[0]

print "\n\tresult is #{all_square_bigger_then_350First}\n"
puts 'end of  the square of all the numbers > 350\n'

#return all the numbers equal_to_350
def all_square_equal_to_350(square_intResult)
  res = []
  c = 0
  for i in 0..square_intResult.length()-1
    if (square_intResult[i] === 350)
      res[c] = square_intResult[i]
      c = c + 1
    end
  end
  return res
end
equal_to_350 = all_square_equal_to_350(square_intResult)
puts 'begining of equal_to_350\n'
puts "all which are eaqual #{equal_to_350}"
puts 'end of equal_to_350\n'


#return all the numbers, cubed
def cube_int(integers)
	square_num = []
	for i in 0..integers.length()-1
		square_num[i] = integers[i] ** 3
	end
	return square_num
end
cube_intResult = cube_int(integers)
puts 'begining of cube_int\n'
puts cube_intResult
puts 'end of cube_int\n'


#return the all number whose cube is > 500
def cube_bigger_then_500(cube_intResult)
	accumulator = []
	c = 0
	for i in 0..cube_intResult.length()-1
	  if cube_intResult[i] > 500
		accumulator[c] = Math.cbrt(cube_intResult[i])
		c = c + 1
	  end
	end
	return accumulator
end
  #return the first number whose cube is > 500
  bigger_then_500_Result = cube_bigger_then_500(cube_intResult)
  
  puts "begining of cube bigger then 500"
  first_bigger_then_500 = bigger_then_500_Result[0]
  puts first_bigger_then_500
  puts "end of cube bigger then 500"

#return all the numbers whose cube is < 500
def cube_lesser_then_500(cube_intResult)
  accumulator = []
  c = 0
  for i in 0..cube_intResult.length()-1
    if cube_intResult[i] < 500
      accumulator[c] = Math.cbrt(cube_intResult[i])
      c = c + 1
    end
  end
  return accumulator
end

cube_lesser_then_500_Result = cube_lesser_then_500(cube_intResult)

puts "begining of cube less then 500"
puts cube_lesser_then_500_Result
puts "end of cube less then 500"