class CreateDireccionNegocios < ActiveRecord::Migration
  def change
    create_table :direccion_negocios do |t|
      t.string :calle
      t.string :numInterior
      t.string :numExterior
      t.string :codigoPostal
      t.string :colonia
      t.string :municipio
      t.string :estado
      t.string :pais

      t.timestamps
    end
  end
end
