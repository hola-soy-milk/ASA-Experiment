class MillerAndHeiseLayout < MotionKit::Layout

	view :one_sound_button
	view :two_sound_button
	view :play_button
	view :question

	def layout
		background_color UIColor.blackColor
		add UIView, :question do
			@label = add UILabel, :question_label
			add UILabel, :question_below_label
		end
    add RoundCorneredButton.systemButton, :one_sound_button
    add RoundCorneredButton.systemButton, :two_sound_button
		@play_button = add RoundCorneredButton.systemButton, :play_button
	end

	def question_style
		frame [[0,0], ['100%', '100%']]
	end


	def answers_style
		frame [[0,0], ['100%', '100%']]
	end

	def one_sound_button_style
		title 'Trill'
		font UIFont.systemFontOfSize(24)
		height '100'
		width '100'
		center ['25%', '90%']
	end

	def two_sound_button_style
		title 'Two'
		font UIFont.systemFontOfSize(24)
		height '100'
		width '100'
		center ['75%', '90%']
	end

	def play_button_style
		title 'Play'
		height '60'
		width '100% - 10'
		font UIFont.systemFontOfSize(48)
		center ['50%', '40%']
	end

	def question_label_style
		text 'What can you hear?'
		text_color UIColor.whiteColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '50%']
		textAlignment UITextAlignmentCenter
	end

	def question_below_label_style
		text '(One trill or two interwoven)'
		text_color UIColor.whiteColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '60%']
		textAlignment UITextAlignmentCenter
	end
end
