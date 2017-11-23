class CreateSexos < ActiveRecord::Migration[5.1]
  def change
    create_table :sexos do |t|
      t.string :sexo

      t.timestamps
    end
  end
end
