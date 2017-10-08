def translate (leber) 
  vowels = %w{a e i o u}
	
	
  num_of_words = leber.split(' ')
	
  num_of_words.map! do |str| 
	
  r = str.length
	
  if(vowels.include? str[0] || r == 1)
    str = str + "ay"
	

  else
    break_found = false
    str.downcase! #undefined method? needs fix 
    first = str[0]
    i = 1
  
    split_value = ''
    split_index = 0
    while (!break_found && i < r)
      case str[i]
        when 'a', 'e', 'i', 'o'
          split_index = i
          split_value = str[i]
          break_found = true
        when 'u'
          if(i == 0 || str[i-1] != 'q')
          split_index = i
          split_value = str[i]
      	 break_found = true
      	 end#end if
    	end#end case
      i+=1
    end#end while
  
    if(break_found)
      str_arr = str.split(split_value, 2)
      newstr = split_value + str_arr[1] + str_arr[0]
  	   str = newstr
    end#end if
  
    str = newstr + "ay"
   
    end# end else
  end #end each
  
  strings = num_of_words.join(' ')
  return strings
  
end#end translate