class Proveedor < ApplicationRecord
	has_many :detalles
	accepts_nested_attributes_for :detalles,  allow_destroy: true
end
