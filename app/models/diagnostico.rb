class Diagnostico < ApplicationRecord
	belongs_to :ficha_medica
	has_many :ficha_docs	
end
