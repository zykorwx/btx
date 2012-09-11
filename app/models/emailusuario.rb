class Emailusuario < ActiveRecord::Base
  attr_accessible :idUser, :emailAlternativo
  belongs_to :perfilusuario, :dependent => :destroy
end
