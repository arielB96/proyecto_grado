class CreateStockMedicas < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_medicas do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
