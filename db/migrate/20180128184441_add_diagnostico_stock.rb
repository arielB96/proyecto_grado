class AddDiagnosticoStock < ActiveRecord::Migration[5.1]
  def change
  	add_reference :stock_medicas, :diagnostico, foreign_key: true, index: true
  end
end
