def not_string(str)
	str = str.downcase
	if(str[0,4] == 'not ')
		b = str
	else
		b = "not #{str}"
	end
end

puts not_string("Nothing string")

#not_string(str)

#def flimflam
#for i in 1..100
#	if (i%3==0) && (i%5==0)
#		puts "FLIMFLAM"
#	elsif i%3==0
#		puts "FLIM"
#	elsif i%5==0
#		puts "FLAM"
#	else
#		puts i
#	end
#end
#end

#a = Array[1,1,2,3,1,4]

#def no_dupes(a)
#	b = a.uniq
#end
