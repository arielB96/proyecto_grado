class AddStockMedicamento < ActiveRecord::Migration[5.1]
  def change
  	add_reference :stocks, :medicamento
  end
end
