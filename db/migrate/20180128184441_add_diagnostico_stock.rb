class AddDiagnosticoStock < ActiveRecord::Migration[5.1]
  def change
  	add_reference :diagnosticos, :stock_medica
  end
end
