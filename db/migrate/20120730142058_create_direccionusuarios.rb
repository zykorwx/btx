class CreateDireccionusuarios < ActiveRecord::Migration
  def change
    create_table :direccionusuarios do |t|
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
