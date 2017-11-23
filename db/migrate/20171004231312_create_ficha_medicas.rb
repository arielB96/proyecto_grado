class CreateFichaMedicas < ActiveRecord::Migration[5.1]
  def change
    create_table :ficha_medicas do |t|
      t.integer :numero
      t.string :especialidad
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :nacionalidad 
      t.integer :ci
      t.date :fechaNacimiento
      t.string :lugarNacimiento
      t.integer :telefono
      t.integer :nCasa
      t.string :email
      t.string :direccionActual
      t.string :departamentoActual
      t.string :distritoActual
      t.boolean :consulta

      t.timestamps
    end
  end
end
