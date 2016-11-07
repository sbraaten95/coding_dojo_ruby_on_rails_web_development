puts [65].pack('U*')
good = ''
for i in (0..13)
	bar = rand
	if (bar < 0.4)
		j = rand(97..122)
		good << [j.floor].pack('U*')
	elsif (bar < 0.8)
		j = rand(65..90)
		good << [j.floor].pack('U*')
	else
		good << rand(48..57)
	end
end
puts good