class CreateNivelAcademicos < ActiveRecord::Migration[5.1]
  def change
    create_table :nivel_academicos do |t|
      t.string :nivelAcdemico

      t.timestamps
    end
  end
end
