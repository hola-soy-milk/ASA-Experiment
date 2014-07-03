class VanNoordenLayout < MotionKit::Layout

	view :one_sound_button
	view :two_sound_button
	view :cant_say_sound_button
	view :play_button
	view :question

	def layout
		background_color UIColor.blackColor
		@play_button = add RoundCorneredButton.systemButton, :play_button
		add UIView, :question do
			@label = add UILabel, :question_label
			add UILabel, :question_below_label
		end
    @one_sound_button = add RoundCorneredButton.systemButton, :one_sound_button
    @two_sound_button = add RoundCorneredButton.systemButton, :two_sound_button
    @cant_say_sound_button = add RoundCorneredButton.systemButton, :cant_say_sound_button
	end

	def question_style
		frame [[0,0], ['100%', '100%']]
	end
	def answers_style
		frame [[0,0], ['100%', '100%']]
	end

	def one_sound_button_style
    title 'One'
		font UIFont.systemFontOfSize(24)
		height '100'
		width '100'
    center ['0% + 54', '90%']
  end

	def two_sound_button_style
		title 'Two'
		font UIFont.systemFontOfSize(24)
		height '100'
		width '100'
		center ['33% + 54', '90%']
	end

	def cant_say_sound_button_style
		title "Unsure"
		font UIFont.systemFontOfSize(24)
		height '100'
		width '100'
		center ['66% + 54', '90%']
	end

	def play_button_style
		title 'Play'
		height '60'
		width '100% - 10'
		font UIFont.systemFontOfSize(48)
		center ['50%', '40%']
	end

	def question_label_style
		text 'How many streams can you hear?'
		text_color UIColor.whiteColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '50%']
		textAlignment UITextAlignmentCenter
	end

	def question_below_label_style
		text '(One coherent or two interwoven)'
		text_color UIColor.whiteColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '60%']
		textAlignment UITextAlignmentCenter
	end
end
