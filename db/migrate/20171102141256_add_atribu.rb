class AddAtribu < ActiveRecord::Migration[5.1]
  def change
	add_reference :ficha_medicas, :sexo
  end
end
