class Stock < ApplicationRecord
	belongs_to :medicamentos
	has_many  :ficha_docs
end
