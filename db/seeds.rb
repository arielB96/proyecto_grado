# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Area.create(area: 'Rural' )
Area.create(area: 'Urbano')
#   Character.create(name: 'Luke', movie: movies.first)
Categori.create(tipo: 'Ficha General' )
Categori.create(tipo: 'Ficha Diabetico')

EstadoCivil.create(estadoCivil: 'Soltero/a' )
EstadoCivil.create(estadoCivil: 'Casado/a')

NivelAcademico.create(nivelAcdemico: 'Primaria' )
NivelAcademico.create(nivelAcdemico: 'Secundaria')

Origen.create(etnia: 'N/N' )
Origen.create(etnia: 'Mbya Guarani')


PuestoSalud.create(nombre: 'San Buenaventura', contacto: '0985 657589' , distrito: 'Itapúa Poty', direccion: 'Av. San Buenaventura' , regionSanitaria: '7° Región Sanitaria')



Sexo.create(sexo: 'Masculino')
Sexo.create(sexo: 'Femenino')