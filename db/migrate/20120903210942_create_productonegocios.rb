class CreateProductonegocios < ActiveRecord::Migration
  def change
    create_table :productonegocios do |t|
      t.string :nombre
      t.string :costo
      t.string :descripcion

      t.timestamps
    end
  end
end
