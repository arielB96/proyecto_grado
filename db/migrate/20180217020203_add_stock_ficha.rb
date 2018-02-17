class AddStockFicha < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_docs, :stock_medica
  end
end
