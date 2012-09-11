# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120713172915) do

  create_table "busquedarelacionadas", :id => false, :force => true do |t|
    t.integer "idPalabraClave",   :null => false
    t.integer "idBusqueda",       :null => false
    t.integer "vecesRelacionada"
  end

  add_index "busquedarelacionadas", ["idBusqueda"], :name => "fkBusquedas"
  add_index "busquedarelacionadas", ["idPalabraClave"], :name => "fkPalabrasRelacionadas"

  create_table "busquedas", :primary_key => "idBusquedas", :force => true do |t|
    t.text "busqueda", :null => false
  end

  create_table "direccionnegocios", :primary_key => "idDireccionNegocio", :force => true do |t|
    t.string "calle",        :limit => 45
    t.string "numInterior",  :limit => 45
    t.string "numExterior",  :limit => 45
    t.string "codigoPostal", :limit => 45
    t.string "colonia",      :limit => 45
    t.string "municipio",    :limit => 45
    t.string "estado",       :limit => 45
    t.string "pais",         :limit => 45
  end

  add_index "direccionnegocios", ["idDireccionNegocio"], :name => "fkDireccionNegocios"

  create_table "direccionusuarios", :primary_key => "email", :force => true do |t|
    t.string "calle",        :limit => 45
    t.string "numInterior",  :limit => 45
    t.string "numExterior",  :limit => 45
    t.string "codigoPostal", :limit => 45
    t.string "colonia",      :limit => 45
    t.string "municipio",    :limit => 45
    t.string "estado",       :limit => 45
    t.string "pais",         :limit => 45
  end

  add_index "direccionusuarios", ["email"], :name => "fkDireccionUsuarios"

  create_table "emailnegocios", :primary_key => "idEmail", :force => true do |t|
    t.integer "idNegocio",                      :null => false
    t.string  "emailAlternativo", :limit => 50
  end

  add_index "emailnegocios", ["idNegocio"], :name => "fkEmailNegocios"

  create_table "emailusuarios", :primary_key => "idEmail", :force => true do |t|
    t.string "emailAlternativo", :limit => 50
    t.string "email",                          :null => false
  end

  add_index "emailusuarios", ["email"], :name => "fkEmailUsuarios"

  create_table "horarionegocios", :primary_key => "idHorarioNegocios", :force => true do |t|
    t.integer "idNegocio",  :null => false
    t.time    "hrApertura"
    t.time    "hrCerrar"
    t.date    "dia"
  end

  add_index "horarionegocios", ["idNegocio"], :name => "fkHorarioNegocio"

  create_table "palabraclavenegocios", :id => false, :force => true do |t|
    t.integer "idProductoNegocios", :null => false
    t.integer "idPalabraClave",     :null => false
  end

  add_index "palabraclavenegocios", ["idPalabraClave"], :name => "fkPalabraClaveNegocios"
  add_index "palabraclavenegocios", ["idProductoNegocios"], :name => "fkProductosNegocios"

  create_table "palabraclaves", :primary_key => "idPalabraClaves", :force => true do |t|
    t.string "palabra", :limit => 45, :null => false
  end

  create_table "palabraclaveusuarios", :id => false, :force => true do |t|
    t.integer "idUsuariosProductos", :null => false
    t.integer "idPalabrasClaves",    :null => false
  end

  add_index "palabraclaveusuarios", ["idPalabrasClaves"], :name => "fkPalabrasClaves"
  add_index "palabraclaveusuarios", ["idUsuariosProductos"], :name => "fkProductosUsuarios"

  create_table "perfilnegocios", :primary_key => "idperfilNegocios", :force => true do |t|
    t.string   "email",                       :null => false
    t.string   "nombreNegocio", :limit => 50, :null => false
    t.string   "tipoNegocio",   :limit => 10
    t.string   "rfc",           :limit => 45
    t.string   "calificacion",  :limit => 10
    t.datetime "fechaCreacion",               :null => false
  end

  add_index "perfilnegocios", ["email"], :name => "fkPerfilNegocios"

  create_table "perfilusuarios", :primary_key => "email", :force => true do |t|
    t.string "nombre",          :limit => 25
    t.string "apepat",          :limit => 25
    t.string "apemat",          :limit => 25
    t.date   "fechaNacimiento"
    t.string "sexo",            :limit => 10
    t.string "sobreMi",         :limit => 200
  end

  add_index "perfilusuarios", ["email"], :name => "fk_perfil_usuarios"

  create_table "productonegocios", :primary_key => "idproductoNegocios", :force => true do |t|
    t.integer "idNegocio",                  :null => false
    t.string  "nombre",       :limit => 45, :null => false
    t.string  "costo",        :limit => 45, :null => false
    t.string  "descripcion",  :limit => 45
    t.string  "calificacion", :limit => 45
    t.string  "fechaCaptura", :limit => 45, :null => false
  end

  add_index "productonegocios", ["idNegocio"], :name => "fkProductoNegocios"

  create_table "productousuarios", :primary_key => "idProductoUsuario", :force => true do |t|
    t.string   "email",                       :null => false
    t.string   "nombre",       :limit => 45,  :null => false
    t.string   "descripcion",  :limit => 200
    t.string   "costo",        :limit => 45,  :null => false
    t.string   "calificacion", :limit => 10
    t.datetime "fechaCaptura"
  end

  add_index "productousuarios", ["email"], :name => "fkProductoUsuarios"

  create_table "telefononegocios", :primary_key => "idTelefono", :force => true do |t|
    t.integer "idNegocio",               :null => false
    t.string  "telefono",  :limit => 30
    t.string  "tipo",      :limit => 20
  end

  add_index "telefononegocios", ["idNegocio"], :name => "fkTelefonoNegocios"

  create_table "telefonousuarios", :primary_key => "idTelefono", :force => true do |t|
    t.string "email",                  :null => false
    t.string "telefono", :limit => 30
    t.string "tipo",     :limit => 20
  end

  add_index "telefonousuarios", ["email"], :name => "fkTelefonoUsuarios"

  create_table "users", :force => true do |t|
    t.string   "email",                        :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], :name => "index_email"
  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

end
