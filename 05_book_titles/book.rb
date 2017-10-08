class Book
  attr_reader :title

  def title=(str)
	words = str.split(' ')
	words[0].capitalize!
	word_len = words.length
	i = 1
	little = %w{a an and the in of}
	while i < (word_len)
	  if !(little.include? words[i])
	    words[i].capitalize!
	  end#end if
	  i = i+1
	end#end while
	@title = words.join(' ')
  end#end writer
end
