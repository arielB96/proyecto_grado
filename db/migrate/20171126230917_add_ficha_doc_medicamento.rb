class AddFichaDocMedicamento < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_docs, :medicamento
  end
end
