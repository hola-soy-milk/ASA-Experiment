class TutorialLayout < MotionKit::Layout
	view :play_one_button
	view :play_two_button
	view :start_button

	def layout
		background_color UIColor.whiteColor
		add UILabel, :one_stream_label
		add UILabel, :two_stream_label
		add UILabel, :time_limit_label
		add UILabel, :time_limit_lower_label
		add UIButton.buttonWithType(UIButtonTypeSystem), :play_one_button
		add UIButton.buttonWithType(UIButtonTypeSystem), :play_two_button
		add UIButton.buttonWithType(UIButtonTypeSystem), :start_button
	end

	def label_default(position, label_text)
		text label_text
		font UIFont.systemFontOfSize(18)
		height '18'
		width '100%'
		center position
		textAlignment UITextAlignmentCenter
	end

	def one_stream_label_style
		label_default(['50%', '10%'], 'This is what one stream sounds like:')
	end

	def two_stream_label_style
		label_default(['50%', '40%'], 'This is what two streams sound like:')
	end

	def time_limit_label_style
		label_default(['50%', '75%'], "You'll have a short time to decide")
	end
	def time_limit_lower_label_style
		label_default(['50%', '80%'], "how many you hear!")
	end


	def button_default(position, label_text)
			title label_text
			font UIFont.systemFontOfSize(24)
			height '18'
			width '100%'
			center position
	end

	def play_one_button_style
		button_default(['50%', '20%'], 'Play One Stream')
	end

	def play_two_button_style
		button_default(['50%', '50%'], 'Play Two Streams')
	end

	def start_button_style
		button_default(['50%', '90%'], 'I Understand')
	end


end
