class StreamTestController < UIViewController
	def initWithTone(tone)
		initWithNibName(nil, bundle:nil)
		@tone = tone
		tone.finished_playing = Proc.new {show_choices}
		self
	end

	def loadView
		@layout = @tone.layout

		self.view = @layout.view

		@question_view = @layout.question
		@question_view.hidden = true

		@play_button = @layout.play_button
	end

	def viewDidLoad
		super
		@play_button.when(UIControlEventTouchUpInside) do
			@tone.play
			@play_button.enabled = false
		end
	end

	def shouldAutorotate
		false
	end

	def show_choices
	end

end
