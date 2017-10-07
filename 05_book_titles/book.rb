class Book
# write your code here
  attr_reader :title

  def title = (str)
	words = str.split(' ')
	word_len = words.length
	i = 0
	little = %w{a an and the in of}
	while i < word_len
	  if !(little.include? words[i])
	    words[i].capitalize!
	  end#end if
	end#end while
	@title = words.join(' ')
  end#end writer
end
