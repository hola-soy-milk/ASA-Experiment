class TutorialController < UIViewController
	def loadView

		if UIApplication.sharedApplication.delegate.van_hoorden_sounds.all? {|tone| tone.answer}
			@layout = TutorialLayoutMillerAndHeise.new
		else
			@layout = TutorialLayout.new
		end

		self.view = @layout.view
	end

	def viewDidLoad
		# @button.when(UIControlEventTouchUpInside) {NSLog 'Touched!'}
	end

	def shouldAutorotate
		false
	end

end
