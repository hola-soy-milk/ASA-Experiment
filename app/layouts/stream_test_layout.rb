class StreamTestLayout < MotionKit::Layout

	view :one_sound_button
	view :two_sound_button
	view :play_button

	def layout
		background_color UIColor.whiteColor
		@label = add UILabel, :question_label
		@one_sound_button = add UIButton.buttonWithType(UIButtonTypeSystem), :one_sound_button
		@two_sound_button = add UIButton.buttonWithType(UIButtonTypeSystem), :two_sound_button
		@play_button = add UIButton.buttonWithType(UIButtonTypeSystem), :play_button
		@label.textAlignment = NSTextAlignmentCenter
	end

	def one_sound_button_style

    title '1'
		font UIFont.systemFontOfSize(24)
		height '25'
		width '100'
    center ['25%', '100%']
  end

	def two_sound_button_style
		title '2'
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
		text 'How many tones can you hear?'
		text_color UIColor.blackColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '50%']
	end

end
