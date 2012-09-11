class CreateProductousuarios < ActiveRecord::Migration
  def change
    create_table :productousuarios do |t|
      t.string :email
      t.string :nombre
      t.string :descripcion
      t.string :costo
      t.string :calificacion
      t.datetime :fechaCaptura

      t.timestamps
    end
  end
end
