class MillerAndHeiseLayout < MotionKit::Layout

	view :one_sound_button
	view :two_sound_button
	view :play_button
	view :question

	def layout
		background_color UIColor.whiteColor
		add UIView, :question do
			@label = add UILabel, :question_label
			add UIButton.buttonWithType(UIButtonTypeSystem), :one_sound_button
			add UIButton.buttonWithType(UIButtonTypeSystem), :two_sound_button
			add UILabel, :question_below_label
		end
		@play_button = add UIButton.buttonWithType(UIButtonTypeSystem), :play_button
	end

	def question_style
		frame [[0,0], ['100%', '100%']]
	end

	def one_sound_button_style
		title 'Trill'
		font UIFont.systemFontOfSize(24)
		height '100'
		width '200'
		center ['25%', '100%']
	end

	def two_sound_button_style
		title 'Two'
		font UIFont.systemFontOfSize(24)
		height '100'
		width '200'
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
		text 'What can you hear?'
		text_color UIColor.blackColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '50%']
		textAlignment UITextAlignmentCenter
	end

	def question_below_label_style
		text '(One twiller or two interwoven)'
		text_color UIColor.blackColor
		font UIFont.systemFontOfSize(18)
		height '24'
		width '100%'
		center ['50%', '60%']
		textAlignment UITextAlignmentCenter
	end
end
