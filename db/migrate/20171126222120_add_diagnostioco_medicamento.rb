class AddDiagnostiocoMedicamento < ActiveRecord::Migration[5.1]
  def change
  	add_reference :diagnosticos , :medicamento
  end
end
