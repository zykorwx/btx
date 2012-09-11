class CreatePerfilnegocios < ActiveRecord::Migration
  def change
    create_table :perfilnegocios do |t|
      t.string :nombreNegocio
      t.string :tipoNegocio
      t.string :rfc
      t.string :calificacion
      t.datetime :fechaCreacion

      t.timestamps
    end
  end
end
