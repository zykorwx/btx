class User < ActiveRecord::Base
    has_attached_file :avatar, :styles => {:thumb => "96x96#", :medium => "160x160", :grande => "540x540" },
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :default_url => 'NoSeleccionado/imgPerfil.png'
  authenticates_with_sorcery!


  
  attr_accessible :email, :password, :password_confirmation, :avatar

 validates_format_of     :email,:with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                          :message    => ': debe ser valido'
                        
  validates_confirmation_of :password

  validates_presence_of :password, :on => :create

  validates_presence_of :email

  validates_uniqueness_of :email
  
  
  has_one :perfilusuario
end
