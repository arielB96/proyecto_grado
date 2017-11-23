class Diagnostico < ApplicationRecord
	belongs_to :ficha_medica
	has_many :ficha_docs

	def self.conditions_from_params(params)
	  #Si llegan en blanco, nil, no hay condiciones de búsqueda
	  return nil if params.blank?
	   
	  #columnas para buscar por texto 
	  text_search_cols = ["titulo", "entradilla","texto"]
	   
	  conditions = [] #incializamos las conditions
	  #Creamos las condiciones de búsqueda por texto
	  if text_search_cols.any? and !params[:text].blank?
	    text = "%#{params[:text]}%" #Texto con comodines
	    #Importante usar Noticia.sanitize_sql_array para protegernos del sql injection
	    conditions << text_search_cols.map{|x| Diagnostico.sanitize_sql_array(["#{x} like ?", text])}.join(" OR ") # col1 like '%text%' or col2 like '%text%'...
	  end
	   
	  #condiciones de búsqueda por fecha
	  conditions << Diagnostico.sanitize_sql_array(["created_at >= ?", Date.new(params["desde(1i)"].to_i,params["desde(2i)"].to_i,params["desde(3i)"].to_i)]) unless params[:desde].blank?
	  conditions << Diagnostico.sanitize_sql_array(["created_at <= ?", Date.new(params["hasta(1i)"].to_i,params["hasta(2i)"].to_i,params["hasta(3i)"].to_i)]) unless params[:hasta].blank?
	 
	  #Por ultimo juntamos las condiciones para que queden de la forma (sql_query_cond1) AND (sql_query_cond2)...
	  conditions.map{|x| "(#{x})"}.join(" AND ")  
end	
end
