class FichaPdf < Prawn::Document
	def initialize
		super
		text "Hola"
	end
end