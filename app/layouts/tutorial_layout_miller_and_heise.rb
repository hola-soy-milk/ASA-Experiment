class TutorialLayoutMillerAndHeise < MotionKit::Layout
	view :play_one_button
	view :play_two_button
	view :start_button

	def layout
		background_color UIColor.blackColor
		add UILabel, :one_stream_label
		add UILabel, :two_stream_label
		add UILabel, :time_limit_label
		add UILabel, :time_limit_middle_label
		add UILabel, :time_limit_lower_label
		add RoundCorneredButton.systemButton, :play_one_button
		add RoundCorneredButton.systemButton, :play_two_button
		add RoundCorneredButton.systemButton, :start_button
	end

	def label_default(position, label_text)
    text_color UIColor.whiteColor
		text label_text
		font UIFont.systemFontOfSize(12)
		height '18'
		width '100%'
		center position
		textAlignment UITextAlignmentCenter
	end

	def one_stream_label_style
		label_default(['50%', '10%'], 'This is what trill sounds like:')
	end

	def two_stream_label_style
		label_default(['50%', '40%'], 'This is what two interwoven streams sound like:')
	end

	def time_limit_label_style
		label_default(['50%', '75%'], "After hearing the stimulus,")
	end
	def time_limit_middle_label_style
		label_default(['50%', '78%'], "you'll have 5 seconds time to give your answer.")
	end
	def time_limit_lower_label_style
		label_default(['50%', '81%'], "After that the next stimulus starts automatically.")
	end


	def button_default(position, label_text)
			title label_text
			font UIFont.systemFontOfSize(24)
			height '50'
			width '100%'
			center position
	end

	def play_one_button_style
		button_default(['50%', '20%'], 'Play Trill')
	end

	def play_two_button_style
		button_default(['50%', '50%'], 'Play Two Interwoven Streams')
	end

	def start_button_style
		button_default(['50%', '90%'], 'Begin Part 2')
	end


end
