class FichaDoc < ApplicationRecord
	belongs_to :diagnostico
	has_many :stock_medicas
end
