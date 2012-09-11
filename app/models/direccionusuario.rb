class Direccionusuario < ActiveRecord::Base
  
  attr_accessible :calle, :codigoPostal, :colonia, :estado, :municipio, :numExterior, :numInterior, :pais
  belongs_to :perfilusuario, :dependent => :destroy


  
end
