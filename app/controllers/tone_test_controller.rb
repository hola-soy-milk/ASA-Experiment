class ToneTestController < UIViewController
	def loadView
		@layout = ToneTestLayout.new

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
