class AddStockFichaDoc < ActiveRecord::Migration[5.1]
  def change
  	add_reference :stock_medicas, :ficha_doc
  end
end
