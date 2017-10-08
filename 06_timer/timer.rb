class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  
  def  time_string
    segundos = @seconds
	hours = segundos / 3600
	segundos = segundos % 3600
	minutes = segundos / 60
	segundos = segundos % 60
	hour_string = ""
	second_string = ""
	minute_string = ""
	
	if (hours < 10)
	  hour_string += "0"
	end
	
	if (segundos < 10)
	  second_string += "0"
	end
	
	if(minutes < 10)
	  minute_string += "0"
	end
	
	hour_string += hours.to_s
	minute_string += minutes.to_s
	second_string += segundos.to_s
	
	final_string = hour_string + ":" + minute_string + ":" + second_string
	return final_string
  end#end time_string
end#end Timer
