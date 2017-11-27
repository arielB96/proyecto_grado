class Medicamento < ApplicationRecord
	validates :nombreMedi, uniqueness: { message: "El nombre del Medicamento ya Existe" }, on: :create
	has_many :stocks
end
