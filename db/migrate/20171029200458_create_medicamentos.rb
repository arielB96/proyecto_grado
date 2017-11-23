class CreateMedicamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :medicamentos do |t|
      t.date :fechaEntrada
      t.date :fechaVencimiento
      t.string :nombreMedi
      t.text :descripcion
      t.integer :cantidad

      t.timestamps
    end
  end
end
