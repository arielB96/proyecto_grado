class Stock < ApplicationRecord
	belongs_to :medicamentos
	belongs_to :ficha_doc
end
