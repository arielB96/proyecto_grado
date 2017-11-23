class AddDiagnostiFicha < ActiveRecord::Migration[5.1]
  def change
  	add_reference :diagnosticos , :ficha_medica
  end
end
