class MillerAndHeiseLayout < MotionKit::Layout

	view :one_stream_button
	view :two_stream_button
	view :play_button
	view :question

	def layout
		background_color UIColor.whiteColor
		add UIView, :question do
			@label = add UILabel, :question_label
			add UIButton.buttonWithType(UIButtonTypeSystem), :one_stream_button
			add UIButton.buttonWithType(UIButtonTypeSystem), :two_stream_button
		end
		@play_button = add UIButton.buttonWithType(UIButtonTypeSystem), :play_button
	end

	def question_style
		frame [[0,0], ['100%', '100%']]
	end

	def one_stream_button_style
		title 'Triller'
		font UIFont.systemFontOfSize(24)
		height '25'
		width '100'
		center ['25%', '100%']
	end

	def two_stream_button_style
		title 'Coherence'
		font UIFont.systemFontOfSize(24)
		height '25'
		width '100'
		center ['75%', '100%']
	end

	def play_button_style
		title 'Play'
		height '48'
		width '100% - 10'
		font UIFont.systemFontOfSize(48)
		center ['50%', '40%']
	end

	def question_label_style
		text 'How does it sound?'
		text_color UIColor.blackColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '50%']
		textAlignment UITextAlignmentCenter
	end
end
