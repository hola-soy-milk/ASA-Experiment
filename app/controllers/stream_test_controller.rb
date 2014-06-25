class StreamTestController < UIViewController
	include SoundsHelpers

	def initWithTone(tone)
		app_delegate.test_count += 1
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

		@one_stream_button = @layout.one_sound_button
		@two_stream_button = @layout.two_sound_button
		@cant_say_button = @layout.cant_say_sound_button if @tone.type == "Van Noorden"

		@play_button = @layout.play_button
	end

	def viewDidLoad
		super
		@play_button.when(UIControlEventTouchUpInside) do
			@tone.play
			@play_button.enabled = false
		end

		@one_stream_button.when(UIControlEventTouchUpInside) { one_touched }
		@two_stream_button.when(UIControlEventTouchUpInside) { two_touched }
		if @cant_say_button
			@cant_say_button.when(UIControlEventTouchUpInside) { cant_say_touched }
		end
	end

	def one_touched
		if @tone.type == "Van Noorden"
			@tone.answer = '1'
		else
			@tone.answer = 'Trill'
		end
		next_round
	end

	def two_touched
		if @tone.type == 'Van Noorden'
			@tone.answer = '2'
		else
			@tone.answer = 'Coherence'
		end
		next_round
	end

	def cant_say_touched
		@tone.answer = 'Unsure'
		next_round
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
		NSLog "File: #{file_prefix} with answer #{@tone.answer}"
		if finished_with_van_noorden? && finished_with_miller_and_heise?
			app_delegate.start_experiment
		elsif finished_with_van_noorden?
			start_miller_and_heise_test
		else
			start_van_noorden_test
		end
	end

end
