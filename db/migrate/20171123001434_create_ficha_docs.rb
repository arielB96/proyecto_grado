class CreateFichaDocs < ActiveRecord::Migration[5.1]
  def change
    create_table :ficha_docs do |t|
      t.text :motivoConsul
      t.text :diagnostico
      t.text :examenFisico
      t.text :otroDiagnos
      t.text :tratamiento
    
      t.timestamps
    end
  end
end
