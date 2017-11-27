class AddFichaStock < ActiveRecord::Migration[5.1]
  def change
  	add_reference :stocks , :ficha_doc
  end
end
