class StreamTestController < UIViewController
	def initWithSoundFile(file)
		initWithNibName(nil, bundle:nil)
		@tone = Tone.new(file, Proc.new {show_choices})
		self
	end

	def loadView
		@layout = @tone.layout

		self.view = @layout.view

		@play_button = @layout.play_button
	end

	def viewDidLoad
		super
		# @play_button.when(UIControlEventTouchUpInside) {NSLog 'Touched!'}
	end

	def shouldAutorotate
		false
	end

	def show_choices
	end

end
