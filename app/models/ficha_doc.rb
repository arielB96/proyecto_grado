class FichaDoc < ApplicationRecord
	belongs_to :diagnostico
	# has_many :stock_medicas
	# accepts_nested_attributes_for :stock_medicas,  allow_destroy: true
end
