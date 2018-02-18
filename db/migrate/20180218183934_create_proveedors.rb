class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
