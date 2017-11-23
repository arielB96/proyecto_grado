class CreateOrigens < ActiveRecord::Migration[5.1]
  def change
    create_table :origens do |t|
      t.string :etnia

      t.timestamps
    end
  end
end
