#1. Write a Ruby program to check whether a value exists in an array.
arr = ["Red", "Green", "", "Blue", "White", ""]

print arr.include? 'Green'
print "\n"

###################
#2. Write a Ruby program to check whether 7 appears as either the first or last element in a given array. The array length must be 1 or more. Go to the editor

seven_arr_0 = [1,2,5,6,8,7]
seven_arr_1 = [2,5,55,6]
seven_arr_2 = [7, 5, 4, 4,]

def chack_first_or_last(seven_arr_0)
  return (seven_arr_0[0] == 7 ||
     seven_arr_0[seven_arr_0.length-1] == 7)
end

print chack_first_or_last(seven_arr_0)
print "\n"

###################
#3. Write a Ruby program to pick number of random elements from a given array. seven_arr_0 to the editor
def random_num_of_elements(seven_arr_0)
  return seven_arr_0.sample[2]
end
print random_num_of_elements(seven_arr_1)
print "\n"
###################
#4. Write a Ruby program to check whether first and the last element are the same of a given array of integers. The array length must be 1 or more. Go to the editor

same_num = [1,4,2,6,3,1]
def same_num_first_last(same_num)
  if (same_num.first() == same_num.last())
    return true
  else
    return false
  end
end
print same_num_first_last(same_num)
print "\n"
###################
#5. Write a Ruby program to compute the sum of elements in a given array. Go to the editor

sample_array = [1,5,3,7,3,6,4,36,7]

def array_sum(sample_array)
  return sample_array.sum()
end

print array_sum(sample_array)
print "\n"
###################
#6. Write a Ruby program to remove duplicate elements from a given array. Go to the editor

def remove_duplicates(sample_array)
  return sample_array.uniq()
end

print remove_duplicates(sample_array)
print "\n"
###################
#Write a Ruby program to check two given arrays of integers and test whether they have the same first element or they have the same last element. Both arrays length must be 1 or more. 

second_array = [5,5,69,2,8,4,1,2,3,1,5,1]

def two_arr_check(sample_array, second_array)
  if (sample_array.length >= 1 &&
      sample_array.first == second_array.first ||
      sample_array.last == second_array.last)
      return true
  else
    return false
  end
end

print two_arr_check(sample_array, second_array)
print "\n"
###################
#8. Write a Ruby program to remove blank elements from a given array. Go to the editor

def remove_blanks(arr)
  new_arr_color = arr.reject {|arr| arr.empty? }
  return new_arr_color
end

print remove_blanks(arr)
print "\n"
###################
#9. Write a Ruby program to compute the sum of all the elements. The array length must be 3 or more. Go to the editor

def element_sum(sample_array)
  if (sample_array.length >= 3)
    return sample_array.sum
  end
end

print element_sum(sample_array)
print "\n"
###################
#10. Write a Ruby program to split a delimited string into an array. Go to the editor

color = "Red, Green, Blue, White"
nums = "1, 3, 4, 5, 7"

def delimited_string(color, nums)
  color_arr = color.split(",")
  print color_arr
  nums_arr = nums.split(",").map { |s| s.to_i }
  print nums_arr
end

print delimited_string(color, nums)
print "\n"
###################
#11. Write a Ruby program to create an array with the elements "rotated left" of a given array of ints length 3. Go to the editor

rota_arr = [1,5,2]

def rota_elements(rota_arr)
  rotated = rota_arr[1], rota_arr[2], rota_arr[0]
  return rotated
end

print rota_elements(rota_arr)
print "\n"
###################
#12. Write a Ruby program to create a new array with the elements in reverse order from a given an array of integers length 3. Go to the editor

revers_arr = [1,2,3,4,5,6,7,8,9]

def arr_reversal(revers_arr)
  reversed = revers_arr.reverse
  return reversed
end

print arr_reversal(revers_arr)
print "\n"
###################
#13. Write a Ruby program to find the larger between the first and last elements of a given array of integers of length 3. Replace all the other values to be that value. Return the changed array. Go to the editor

def return_all_ele_bigger(sample_array)
  new_array = []
  if (sample_array[0] > sample_array[-1])
    for i in 0..sample_array.length-1
      new_array[i] = sample_array[0]
    end
  else
    for i in 0..sample_array.length-1
      new_array[i] = sample_array[-1]
    end 
  end
  return new_array
end

print return_all_ele_bigger(sample_array)
print "\n"


###################
#14. Write a Ruby program to compute the sum of the first 2 elements of a given array of integers. If the array length is less than 2, just sum up the elements that exist.

def sum_first_two(sample_array)
  if (sample_array.length < 2)
    sum = sample_array[0]
  else
    sum = sample_array[0] + sample_array[1]
  return sum
  end
end

print sum_first_two(sample_array)
print "\n"

###################
#15. Write a Ruby program to create an array of length 2 containing their middle elements from two given arrays of integers of length 3. Go to the editor

def two_medians_from_2_arr(arr1, arr2)

  medians = []

  arr1.sort
  arr2.sort

  if(arr1.length.even?)
    arr1_median_index = arr1.length / 2
  else
    arr1_median_index = (arr1.length + 1) / 2
  end

  if(arr2.length.even?)
    arr2_median_index = arr2.length / 2
  else
    arr2_median_index = (arr2.length + 1) / 2
  end

  medians[0] = arr1[arr1_median_index]
  medians[1] = arr2[arr2_median_index]

  return medians
end

print  two_medians_from_2_arr(seven_arr_0, seven_arr_1)
print "\n"

###################
#16. Write a Ruby program to concatenate array of arrays into one. Go to the editor

multi_arr = [seven_arr_0, seven_arr_1, sample_array, 4,6,7,3,33]

def flatten_array(multi_arr)
  return multi_arr.flatten
end

print flatten_array(multi_arr)
print "\n"

###################
#17. Write a Ruby program to check whether a given array of integers of length 2 contains a 4 or a 7. Go to the editor

def check_for_elements(sample_array)
  if (sample_array.include?(4) || 
      sample_array.include?(7) )
    return true
  else
    return false
  end
end

print check_for_elements(sample_array)
print "\n"

###################
#18. Write a Ruby program to check whether a given array of integers of length 2 does not contain a 6 or a 9. Go to the editor

def check_for_elements_not(sample_array)
  if (sample_array.include?(4) || 
      sample_array.include?(7) )
    answer = "yes"
  else
    answer = "no"
  end
  return answer
end

print check_for_elements_not(sample_array)
print "\n"

###################
#19. Write a Ruby program to check whether a given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2. Go to the editor

def check_twice(sample_array)
  counter3 = 0
  counter5 = 0
  counter = []
  for i in 0..sample_array.length-1
    if sample_array[i] == 3
      counter3 = counter3 + 1
    end
    if sample_array[i] == 5
      counter5 = counter5 + 1
    end
  end

  if (counter3 == 2 || counter5 == 2)
    counter = true
  end

  return counter
end

print "check_twice: "
print check_twice(sample_array)
print "\n"

###################
#20. Write a Ruby program to set 5 to 1 whether there is a 3 immediately followed by a 4 in a given array of integers (length 3). Go to the editor

# bullshit

###################
#21. Write a Ruby program to compute the sum of two arrays (length 3) and return the array which has the largest sum. Go to the editor


def sum_retu_bigger(sample_array, second_array)

  temp = sample_array.sum + second_array.sum
  print "sum is: #{temp}"

  if (sample_array.sum > second_array.sum)
    bigger = sample_array
  else
    bigger = second_array
  end

  print "\nbigger array is: "
  return bigger
end

print sum_retu_bigger(sample_array, second_array)
print "\n"

###################
#22. Write a Ruby program to create a new array of length 2 containing the middle two elements from a given array of integers of even length 2 or more. Go to the editor

def two_mid_elem_of_even_arr(second_array)
  temp = [second_array[(second_array.length / 2)], second_array[((second_array.length / 2) - 1)]]

  return temp
end

print two_mid_elem_of_even_arr(second_array)
print "\n"

###################
#23. Write a Ruby program to create a new array of length 4 containing all their elements from two array of integers, length 2. Go to the editor

def merge_arr(sample_array, second_array)
  temp = []
  temp.concat(sample_array).concat(second_array)

  return temp
end

print merge_arr(sample_array, second_array)
print "\n"

###################
#24. Write a Ruby program to swap the first and last elements of a given array of integers, length will be at least 1. Return the modified array. Go to the editor

def swap_first_last(sample_array)
  temp = sample_array
  first = sample_array[0]
  last = sample_array[-1]
  
  temp[0] = last
  temp[-1] = first

  return temp
end
print swap_first_last(sample_array)
print "\n"

###################
#25. Write a Ruby program to create a new array of length 3 containing the elements from the middle of a given array of integers of odd length (at least 3). Go to the editor
odd_arr_1 = [1,2,3,4,5]
odd_arr_2 = [6,7,8,9,10]

def medians_of_odd(odd_arr_1, odd_arr_2)
  temp = [odd_arr_1[odd_arr_1.length/2],
          odd_arr_2[odd_arr_2.length/2]]
  return temp
end

print medians_of_odd(odd_arr_1, odd_arr_2)
print "\n"

###################
#26. Write a Ruby program to find the largest value from a given array of integers of odd length. The array length will be a least 1. Go to the editor

def largest_val(sample_array)
  return sample_array.max
end

print largest_val(sample_array)
print "\n"

###################
#27. Write a Ruby program to create a new array using first three elements of a given array of integers. If the length of the given array is less than three return the original array. Go to the editor


def new_arr_first_three(in_array)
  temp = []
  if in_array.length < 3
    temp = in_array
  else
    temp = [in_array[0],in_array[1],in_array[2]]
  end

  return temp
end

print new_arr_first_three(sample_array)
print "\n"

###################
#28. Write a Ruby program to create a new array with the first element of two arrays. If length of any array is 0, ignore that array. Go to the editor


def first_two_new_arr(in_arr1, in_arr2)
  temp = []

  if(in_arr1.length > 0 && in_arr2.length > 0)
    temp = [in_arr1[0], in_arr2[0]]
  elsif (in_arr1.empty?)
    temp = [in_arr2[0]]
  elsif (in_arr2.empty?)
     temp = [in_arr1[0]]
  end
  return temp
end

print first_two_new_arr(odd_arr_1,odd_arr_2)
print "\n"

###################
#29. Write a Ruby program to get the number of even integers in a given array. Go to the editor

def num_of_even_ints(in_arr)
  counter = 0

  for i in 0..in_arr.length-1
    if(in_arr[i].even?)
      counter = counter + 1
    end
  end
  return counter
end

print num_of_even_ints(odd_arr_1)
print "\n"

###################
#30. Write a Ruby program to find the difference between the largest and smallest values of a given array of integers and length 1 or more. Go to the editor

def diff_largest_smallest_int(in_arr)
  in_arr.sort
  diff = in_arr[0] - in_arr[-1]

  return diff.abs
end

print diff_largest_smallest_int(odd_arr_1)
print "\n"

###################
#31. Write a Ruby program to compute the average values of a given array of except the largest and smallest values. The array length must be 3 or more. Go to the editor

def avrg_ex_small_large(in_arr)
  temp = 0
  in_arr.sort
  for i in 1..in_arr.length-2
    temp = in_arr[i]
  end

  avrg = temp.to_f / (in_arr.length-3)

  return avrg
end

print avrg_ex_small_large(odd_arr_1)
print "\n"

###################
#32. Write a Ruby program to compute the sum of the numbers of a given array except the number 17 and numbers that come immediately after a 17. Return 0 for an empty array. Go to the editor

for_17 = [1,2,3,4,5,6,17,1,5,1,1,9,1]

def sum_except_17(in_arr)
  temp = []

  for i in 0..in_arr.length-1
    temp[i] = in_arr[i]
    if in_arr[i] == 17
      temp.pop()
      break
    end
  end
    return temp
end

print sum_except_17(for_17)
print "\n"

###################
#33. Write a Ruby program to check whether the sum of all the 3's of a given array of integers is exactly 9. Go to the editor

check_sum = [1,2,2,5,3,4,5,6,1,2,3,4,5,6,3,7]

def check_sum_for_3_9(in_arr)
  sum = 0
  for i in 0..in_arr.length-1
    if in_arr[i] == 3
      sum = sum + 3
    end
  end
  
  if sum == 9
    return true
  else
    return false
  end
end

print check_sum_for_3_9(check_sum)
print "\n"

###################
#34. Write a Ruby program to check whether the number of 2's is greater than the number of 5's of a given array of integers. Go to the editor

def compare_2_and_5(in_arr)
  twos = 0
  fives = 0

  for i in 0..in_arr.length-1
    if in_arr[i] == 2
      twos = twos + 1
    elsif in_arr[i] == 5
      fives = fives + 1
    end
  end

  if twos > fives
    answer = "more 2"
  elsif fives > twos
    answer = "more 5"
  else
    answer = "equal 2 and 5"
  end
end

print compare_2_and_5(check_sum)
print "\n"

###################
#35. Write a Ruby program to check whether every element is a 3 or a 5 in a given array of integers. Go to the editor

check_same = [1,1,1,1,1,1,1]

def check_same_elem(in_arr)
 
  if in_arr.uniq.length < 2
    return true
  else
    return false
  end
end

print "all elements are the same: "
print check_same_elem(check_same)
print "\n"

###################
#36. Write a Ruby program to check whether it contains no 3 or it contains no 5. Go to the editor

arra = [1,3,5,6,7]

def check_for_not_included(in_arr)
  for i in 0..in_arr.length-1
    if ((in_arr[i] == 3) || (in_arr[i] == 5))
      return false
    else
      return true
    end
  end
end

print check_for_not_included(arra)
print "\n"

###################
#38. Write a Ruby program to check whether a given array contains a 3 next to a 3 or a 5 next to a 5, but not both. Go to the editor

rep_arr = [1,1,2,2,3,3,6,6,7,6,5,5,3]

def check_imidiet_rep(in_arr)
  
  for i in 0..in_arr.length-1
    if (in_arr[i] == 3 && in_arr[i+1] == 3 &&
        (in_arr[i] == 5 && in_arr[i+1] == 5 ))
        return false
    elsif (in_arr[i] == 3 && in_arr[i+1] == 3)
      temp3 = "two x 3 in a row "
      return temp3
    elsif (in_arr[i] == 5 && in_arr[i+1] == 5)
      temp5 = "two x 5 in a row "
      return temp5
    end
  end

end

print check_imidiet_rep(rep_arr)
print "\n"

###################
#39. Write a Ruby program to check whether a given array of integers contains two 6's next to each other, or there are two 6's separated by one element, such as {6, 2, 6}. Go to the editor

def check_for_sixes(in_arr)
  
  for i in 0..in_arr.length-1
    if(in_arr[i] == 6 && in_arr[i+1] == 6) 
      return true
    elsif (in_arr[i] == 6 && in_arr[i+2] == 6 )
      return true
    else
      return false
    end
  end
end
print "\nerror not working"
print check_for_sixes(rep_arr)
print "\n"

###################
#40. Write a Ruby program to check whether there is a 2 in the array with a 3 somewhere later in a given array of integers. Go to the editor

def check_for_apper_after(in_arr)
  temp = false
  for i in 0..in_arr.length-1
    if in_arr[i] == 2
      for c in i..in_arr.length-1
        if in_arr[c] == 3
          temp = true
        end
      end
    else
      next
    end
  end
  return temp
end

print check_for_apper_after(rep_arr)
print "\n"

###################
#41. Write a Ruby program to check whether the value 2 appears in a given array of integers exactly 2 times, and no 2's are next to each other. Go to the editor

def check_two_two_times(in_arr)
  counter = 0
  for i in 0..in_arr.length-1
    if(in_arr[i] == 2 && in_arr[i+1] != 2)
      counter = counter + 1
    end
  end

  if counter == 2
    return true
  else
    return false
  end
end

print check_two_two_times(rep_arr)
print "\n"

###################
#42. Write a Ruby program to convert an array into an index hash. Go to the editor

#to_h not found, not working

#def convert_to_hash(in_arr)
  #print Hash[in_arr.zip]
#end

#print convert_to_hash(color) => undefined method `zip'

########
#sourc:
#https://www.w3resource.com/ruby-exercises/array/ruby-array-exercise-42.php
#solution working, my not... Help!


###################
#44. Write a Ruby program to check whether all items are identical in a given array. Go to the editor

print check_same_elem(same_num)
print "\n"

###################
#45. Write a Ruby program to search items start with specified string of a given array. Go to the editor

arra1 = ['abcde', 'abdf', 'adeab', 'abdgse', 'bdefa', 'bacdef']
def find_specified_ele(in_arr)
  print in_arr.grep(/ab/)
end

print find_specified_ele(arra1)
print "\n"


###################
#46. Write a Ruby program to iterate an array starting from the last element. Go to the editor

def iterate_from_last(in_arr)
  in_arr.reverse.each { |x| puts x }
end

print iterate_from_last(sample_array)

###################
#47. Write a Ruby program to iterate over the first n elements of a given array. Go to the editor

def show_first_ele(in_arr)
  out_arr = in_arr.first(3)
  return out_arr
end

print show_first_ele(sample_array)
print "\n"

###################
#48. Write a Ruby program to sort a given array of strings by length. Go to the editor


arra12 = ['abcde', 'abdf', 'adeab', 'abdgeee', 'bdefa', 'abc', 'ab', 'a', 'bacdef']
print "Original array:\n"
print arra12
print "\nSorted array of strings by length\n"
arra12 = arra12.sort_by(&:length)
print arra12
