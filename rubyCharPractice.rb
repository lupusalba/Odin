#Practice with Characters
#Characters - array from 'a' to 'z' - ('a'..'z').to_a

#Objectives:

#return all the letters, capitalized
#first letter with ord > 120
#all the letters whose capital is > 72
#all letters where the capital has an even ord
#all letters with odd ord
#first odd - ord letter with ascii value > 80
#For reference: letter.ord - returns the ascii value #of a letter (as an integer)


#initial array
chars = ('a'..'z').to_a

#return all the letters, capitalized
def all_letters_capitalized(chars)
  chars.map {|string| string.upcase}
end
print all_letters_capitalized(chars)


def all_letters_capitalized_ord(chars)
  chars.map {|string| string.upcase}
  tempo = chars.map {|letter| letter.ord}
  return tempo
end
caps = all_letters_capitalized_ord(chars)
for i in 0..25
  if caps[i] > 72
    print "\n#{caps[i].chr}"
  end
end


def all_letters_ord(chars)
  tempo = chars.map {|letter| letter.ord}
  return tempo
end
arr = all_letters_ord(chars)
for i in 0..25
  if arr[i] > 120
    print "\n#{arr[i].chr}"
  end
end

for i in 0..25
  if caps[i].even
    print "\n#{caps[i].chr}"
  else if arr[i].even
    print "\n#{caps[i].chr}"
  end
end

print "\n\n\n"



#all the letters whose capital is > 72
