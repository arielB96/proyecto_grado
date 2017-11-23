class AddestdoCivil < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_medicas, :estado_civil
  end
end
