class CreateTelefononegocios < ActiveRecord::Migration
  def change
    create_table :telefononegocios do |t|
      t.string :telefono
      t.string :tipo

      t.timestamps
    end
  end
end
