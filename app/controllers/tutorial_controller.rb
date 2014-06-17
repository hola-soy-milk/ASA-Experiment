class TutorialController < UIViewController
	def loadView
		@layout = TutorialLayout.new

		self.view = @layout.view
	end

	def viewDidLoad
		# @button.when(UIControlEventTouchUpInside) {NSLog 'Touched!'}
	end

	def shouldAutorotate
		false
	end

end
