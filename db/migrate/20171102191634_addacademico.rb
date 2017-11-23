class Addacademico < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_medicas, :nivel_academico
  end
end
