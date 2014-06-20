class StreamTestController < UIViewController
	include SoundsHelpers

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
		@question_view.hidden = false
		performSelector("did_not_answer", withObject:nil, afterDelay:5.0)
	end

	def did_not_answer
		unless @tone.answer
			@tone.answer = "Timeout"
			next_round
		end
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
