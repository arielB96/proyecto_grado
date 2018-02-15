class AddDiagnosticoStock < ActiveRecord::Migration[5.1]
  def change
  	add_reference :stock_medicas, :diagnostico
  end
end
