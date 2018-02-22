class Detalle < ApplicationRecord
	belongs_to :medicamento
	after_save :sumar_medicamentos
	def sumar_medicamentos
	    self.medicamento.cantidad += self.cantidad
	    self.medicamento.save
	 end
end
