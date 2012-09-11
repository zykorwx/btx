class Perfilusuario < ActiveRecord::Base
    
  attr_accessible :nombre, :apepat, :apemat, :fechaNacimiento, :sexo, :sobreMi, :direccionusuario_attributes
  self.primary_key = "id"
  belongs_to :user, :dependent => :destroy
  has_many :telefonousuarios, :dependent => :destroy, :foreign_key => "idUser"
  has_many :emailusuarios, :dependent => :destroy, :foreign_key => "idUser"
  has_one :direccionusuario, :dependent => :destroy, :foreign_key => "id"
  accepts_nested_attributes_for :direccionusuario

end
