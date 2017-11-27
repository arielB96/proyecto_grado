class FichaDoc < ApplicationRecord
	belongs_to :diagnostico
	belongs_to :stock
end
