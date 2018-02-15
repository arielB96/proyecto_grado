class Diagnostico < ApplicationRecord
	belongs_to :ficha_medica
	has_many :ficha_docs
	has_many :stock_medicas, through: :ficha_docs
	accepts_nested_attributes_for :stock_medicas,  allow_destroy: true
	accepts_nested_attributes_for :ficha_docs,  allow_destroy: true
end
