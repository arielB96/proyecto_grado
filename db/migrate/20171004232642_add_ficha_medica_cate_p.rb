class AddFichaMedicaCateP < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_medicas, :puesto_salud
  end
end
