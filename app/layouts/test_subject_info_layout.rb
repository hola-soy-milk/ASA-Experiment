class TestSubjectInfoLayout < MotionKit::Layout

	@left = '25% + 10'

	view :id_field
	view :promille_field
	view :alcohol_switch
	view :done_button

	def layout
		background_color UIColor.whiteColor
		add UITextField, :id_field
		add UITextField, :promille_field
		add UISwitch, :alcohol_switch
		add UILabel, :id_label
		add UILabel, :promille_label
		add UILabel, :switch_label
		add UIButton.buttonWithType(UIButtonTypeSystem), :done_button
	end

	def label_default(position, label_text)
		text label_text
		font UIFont.systemFontOfSize(18)
		height '18'
		width '100'
		center position
		textAlignment UITextAlignmentLeft
	end

	def id_label_style
		label_default(['10', '20%'], 'Subject ID:')
	end

	def promille_label_style
		label_default(['10', '40%'], 'Promille:')
	end

	def switch_label_style
		label_default(['10', '30%', 'Alcohol?'])
	end

	def id_field_style
		width '200'
		center [@left, '20%']
	end

	def alcohol_switch_style
		center [@left, '30%']
	end

	def promille_field_style
		width '200'
		center [@left, '40%']
	end

	def done_button_style
		title 'Done'
		height '48'
		width '100% - 10'
		font UIFont.systemFontOfSize(48)
		center ['50%', '80%']
	end
end
