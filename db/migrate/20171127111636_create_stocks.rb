class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
