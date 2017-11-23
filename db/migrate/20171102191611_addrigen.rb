class Addrigen < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_medicas, :origen
  end
end
