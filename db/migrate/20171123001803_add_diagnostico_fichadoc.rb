class AddDiagnosticoFichadoc < ActiveRecord::Migration[5.1]
  def change
  	add_reference :ficha_docs, :diagnostico
  end
end
