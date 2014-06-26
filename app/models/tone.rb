class Tone

	attr_accessor :answer, :finished_playing, :info

	def initialize(file)
		@tone = VanNoorden.new if file =~ /vn/
		@tone = MillerAndHeise.new if file =~ /mh/
		@sound = AVAudioPlayer.alloc.initWithContentsOfURL(NSBundle.mainBundle.URLForResource(file.stringByDeletingPathExtension, withExtension:file.pathExtension), error: nil)
		@sound.delegate = self
		self.info = file.stringByDeletingPathExtension
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
