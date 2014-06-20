class Tone

	include SoundsHelpers

	attr_accessor :answer, :finished_playing

	def initialize(file)
		@tone = VanNoorden.new if file =~ /vn/
		@tone = MillerAndHeise.new if file =~ /mh/
		@sound = AVAudioPlayer.alloc.initWithContentsOfURL(NSBundle.mainBundle.URLForResource(file.stringByDeletingPathExtension, withExtension:file.pathExtension), error: nil)
		@sound.delegate = self
	end

	def play
		@sound.play
	end

	def is_playing?
		@sound.isPlaying
	end

	def stop
		@sound.stop
	end

	def type
		@tone.type
	end

	def layout
		@tone.layout
	end

	def audioPlayerDidFinishPlaying(player, successfully:flag)
		self.finished_playing.call
	end

	def did_not_answer
		@tone.answer = "Timeout"
		next_round
	end

	def next_round
		if finished_with_van_noorden? && finished_with_miller_and_heise?
			NSLog 'finished'
		elsif finished_with_van_noorden?
			start_miller_and_heise_test
		else
			start_van_noorden_test
		end
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
