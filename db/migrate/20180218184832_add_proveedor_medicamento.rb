class AddProveedorMedicamento < ActiveRecord::Migration[5.1]
  def change
  	add_reference :proveedors, :medicamento
  end
end
