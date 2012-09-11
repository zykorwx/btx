class Telefonousuario < ActiveRecord::Base
  attr_accessible :telefono, :tipo, :id, :idUser
   self.primary_key = "id"
   belongs_to :perfilusuario
   accepts_nested_attributes_for :perfilusuario
end
