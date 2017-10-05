#write your code here
def echo (str)
	return str
end

def shout (str)
	return str.upcase
end

def repeat (str, num = 2)
	i = 1
	str2 = str
	while (i < num)
	str2 = str2 + " " + str
	i+=1
	end
	return str2
end

def start_of_word (str, num)
	i = 0
	rstr = ""
	while (i < num)
	  rstr = rstr + str[i]
	  i+=1
	end
	return rstr
end

def first_word (str)
	str_arr = str.split(' ')
	return str_arr[0]
end

def titleize (str)
	str2 = str.split
	str2[0].capitalize!
	str2.each do |word|
	  if (word != 'over' && word != 'the' && word != 'and')
	  	word.capitalize!
	  end
	end
	str3 = str2.join(' ')
	
	return str3
end