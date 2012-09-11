class BuscadorController < ApplicationController
  
  def index

  @ip = request.ip
  coordenadas = Geocoder.search(@ip)
  @concatena =  "#{coordenadas[0].latitude} #{coordenadas[0].longitude}"
  
  @result = Geocoder.search(@concatena)

  end

  def resultado
  end
end
