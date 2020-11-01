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

integers = make_array(0,10)

puts integers


def odd_int(integers)
	odd_num = []
	for i in 0..integers.length()-1
		if integers[i] % 2 == 0
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

def even_int(integers)
	even_num = []
	for i in 0..integers.length()-1
		if integers[i] % 2 == 0
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

def square_int(integers)
	square_num = []
	for i in 0..integers.length()-1
		square_num[i] = integers[i] * integers[i]
	end
	return square_num
end
square_intResult = square_int(integers)
puts 'begining of square\n'
puts square_intResult
puts 'end of square\n'

def square_int(integers)
	square_num = []
	for i in 0..integers.length()-1
		square_num[i] = integers[i] * integers[i]
	end
	return square_num
end

square_intResult = square_int(integers)
puts 'begining of square\n'
puts square_intResult
puts 'end of square\n'