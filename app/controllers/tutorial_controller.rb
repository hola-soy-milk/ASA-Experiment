class TutorialController < UIViewController
	include SoundsHelpers
	def loadView

		if finished_with_van_noorden?
			@layout = TutorialLayoutMillerAndHeise.new
			@sound1 = Tone.new('tutorial_1.wav')
			@sound2 = Tone.new('tutorial_2.wav')
			@type = :miller_and_heise
		else
			@layout = TutorialLayout.new
			@sound1 = Tone.new('tutorial_3.wav')
			@sound2 = Tone.new('tutorial_4.wav')
			@type = :van_noorden
		end

		@sound1.finished_playing = Proc.new {NSLog "Finished"}
		@sound2.finished_playing = Proc.new {NSLog "Finished"}

		self.view = @layout.view

		@one_button = @layout.play_one_button
		@two_button = @layout.play_two_button
		@start_button = @layout.start_button
	end

	def viewDidLoad
		@one_button.when(UIControlEventTouchUpInside) do
			@sound2.stop if @sound2.is_playing?
			@sound1.play
		end
		@two_button.when(UIControlEventTouchUpInside) do
			@sound1.stop if @sound1.is_playing?
			@sound2.play
		end
		@start_button.when(UIControlEventTouchUpInside) do
			@sound1.stop if @sound1.is_playing?
			@sound2.stop if @sound2.is_playing?
			if @type == :miller_and_heise
				start_miller_and_heise_test
			else
				start_van_noorden_test
			end
		end
	end

	def shouldAutorotate
		false
	end

end
