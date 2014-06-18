class Tone

	attr_accessor :answer

	def initialize(file)
		@tone = VanNoorden.new if file =~ /vn/
		@tone = MillerAndHeise.new if file =~ /mh/
	end

	def play(finished_playing)

	end

	def type
		@tone.type
	end

	def layout
		@tone.layout
	end

end

class VanNoorden

	def layout
		VanNoordenLayout.new
	end

	def type
		'Van Noorden'
	end



end

class MillerAndHeise

	def layout
		MillerAndHeiseLayout.new
	end

	def type
		'Miller & Heise'
	end

end
