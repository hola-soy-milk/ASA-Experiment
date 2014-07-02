class TestSubjectInfoLayout < MotionKit::Layout



	view :id_field
	view :promille_field
	view :alcohol_switch
	view :done_button

	def layout
		background_color UIColor.whiteColor
		add NumberPadTextField, :id_field
		add NumberPadTextField, :promille_field
		add UISwitch, :alcohol_switch
		add UILabel, :id_label
		add UILabel, :promille_label
		add UILabel, :switch_label
		add RoundCorneredButton.systemButton, :done_button
	end

	def label_default(position, label_text)
		text label_text
		font UIFont.systemFontOfSize(18)
		height '18'
		width '100'
		center position
		textAlignment UITextAlignmentRight
	end

	def id_label_style
		label_default([50, '20%'], 'Subject ID:')
	end

	def promille_label_style
		label_default([50, '40%'], 'Promille:')
	end

	def switch_label_style
		label_default([50, '30%'], 'Alcohol?')
	end

	def id_field_style
		height '18'
		width '200'
		center ['75%', '20%']
		textAlignment UITextAlignmentLeft
	end

	def alcohol_switch_style
		center ['50%', '30%']
	end

	def promille_field_style
		height '18'
		width '200'
		center ['75%', '40%']
		textAlignment UITextAlignmentLeft
	end

	def done_button_style
		title 'Begin Testing'
		height '48'
		width '100% - 10'
		font UIFont.systemFontOfSize(48)
		center ['50%', '50%']
	end
end


class NumberPadTextField < UITextField
	def keyboardType
		UIKeyboardTypeDecimalPad
	end
end
