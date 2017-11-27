class StockMedica < ApplicationRecord
	has_many :ficha_docs
	accepts_nested_attributes_for :ficha_docs
	belongs_to :medicamento
	after_save :descontar_medicamentos
	after_save :stock_negativo
	 private
	  # Este es un metodo que se disparara automaticamente despues que se guarde una compra
	  # self.bidon llama a la relacion belongs_to que esta arriba y le descuenta la cantidad comprada este es un campo de la tabla compra.
	  # luego se guarda el objeto relacionado

	  def descontar_medicamentos
	    	self.medicamento.cantidad -= self.cantidad
	    	self.medicamento.save
	  end
	  # #controla que haya stock suficiente
	  # def stock_negativo
	  #   errors.add(:stock_medica_cantidad, "supera el stock exixtente") if Medicamento.find(medicamento_id).cantidad < stock_medica_cantidad
	  # end
 end
