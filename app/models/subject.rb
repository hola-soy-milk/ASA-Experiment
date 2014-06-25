class Subject
	attr_accessor :id, :alcohol, :promille

	def initialize(id, alcohol, promille)
		self.id = id
		self.alcohol = alcohol
		self.promille = promille
	end

end
