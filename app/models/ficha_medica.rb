class FichaMedica < ApplicationRecord
	belongs_to :categori
	belongs_to :puesto_salud
	belongs_to :sexo
	belongs_to :estado_civil
	belongs_to :origen
	belongs_to :nivel_academico
	belongs_to :area
	has_many :diagnosticos
	
	validates :categori_id, :presence => {:message => "seleccione un Tipo de Ficha"}
	validates :puesto_salud_id, :presence => {:message => "seleccione un Puesto de Salud"}
	validates :sexo_id, :presence => {:message => "seleccione un Sexo"}
	validates :origen_id, :presence => {:message => "seleccione una Etnia"}
	validates :nivel_academico_id, :presence => {:message => "seleccione Nivel Academico"}
	validates :area_id, :presence => {:message => "seleccione un Area"}
	
	validates :numero, uniqueness: { message: "El Numero ya Existe" }, 
				:numericality => {:numero => 0, :message => "debe ser un numero positivo"}
	validates :ci, uniqueness: { message: "El Numero de Cedula ya Existe" }, on: :create
	validates :especialidad, :nombre, :apellido, :edad,:fechaNacimiento, :lugarNacimiento, :nacionalidad,:telefono, :nCasa, :email, :direccionActual, :departamentoActual, :distritoActual, presence: true
end
