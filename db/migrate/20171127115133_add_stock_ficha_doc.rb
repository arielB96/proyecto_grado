class AddStockFichaDoc < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_docs, :stock
  end
end
