class Addarea < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_medicas, :area
  end
end
