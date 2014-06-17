class StreamTestController < UIViewController
	def loadView
		@layout = StreamTestLayout.new

		self.view = @layout.view

		@button = @layout.one_sound_button
	end

	def viewDidLoad
		@button.when(UIControlEventTouchUpInside) {NSLog 'Touched!'}
	end

	def shouldAutorotate
		false
	end

end
