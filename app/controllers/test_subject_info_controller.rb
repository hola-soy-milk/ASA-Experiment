class TestSubjectInfoController < UIViewController
	def loadView
		@layout = TestSubjectInfoLayout.new
		self.view =  @layout.view

		@id_field = @layout.id_field
		@alcohol_switch = @layout.alcohol_switch
		@promille_field = @layout.promille_field

		@done_button = @layout.done_button
	end

	def viewDidLoad
		@id_field.text = 'Subject ID'
		@alcohol_switch.on = false
		@promille_field.text = '0'
		@done_button.when(UIControlEventTouchUpInside) do
			id = @id_field.text == '' ? 'No_ID' : @id_field.text
			alcohol = @alcohol_switch.isOn
			promille = @promille_field.text == '' ? 0 : @promille_field.text.to_f
			subject = Subject.new(id, alcohol, promille)
			set_subject subject
		end
	end


end
