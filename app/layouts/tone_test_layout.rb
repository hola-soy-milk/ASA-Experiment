class ToneTestLayout < MotionKit::Layout

	view :one_sound_button
	view :two_sound_button

	def layout
		background_color UIColor.whiteColor
		@one_sound_button = add UIButton.buttonWithType(UIButtonTypeSystem), :one_sound_button
		@two_sound_button = add UIButton.buttonWithType(UIButtonTypeSystem), :two_sound_button
	end

	def one_sound_button_style

    title 'One'
		font UIFont.systemFontOfSize(25)
		height '25'
		width '50'
    center ['25%', '75% + 50']
  end

	def two_sound_button_style
		title 'Two'
		font UIFont.systemFontOfSize(25)
		height '25'
		width '50'
		center ['75%', '75% + 50']
	end
end
