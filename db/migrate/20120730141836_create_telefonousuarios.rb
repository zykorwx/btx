class CreateTelefonousuarios < ActiveRecord::Migration
  def change
    create_table :telefonousuarios do |t|
      t.string :email
      t.string :telefono
      t.string :tipo

      t.timestamps
    end
  end
end
