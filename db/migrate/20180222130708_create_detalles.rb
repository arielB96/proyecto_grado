class CreateDetalles < ActiveRecord::Migration[5.1]
  def change
    create_table :detalles do |t|
    	t.integer :cantidad

      t.timestamps
    end
  end
end
