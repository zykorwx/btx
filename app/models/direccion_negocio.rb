class DireccionNegocio < ActiveRecord::Base
  attr_accessible :calle, :codigoPostal, :colonia, :estado, :municipio, :numExterior, :numInterior, :pais
end
