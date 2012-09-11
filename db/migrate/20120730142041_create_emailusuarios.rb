class CreateEmailusuarios < ActiveRecord::Migration
  def change
    create_table :emailusuarios do |t|
      t.string :emailAlternativo
      t.string :email

      t.timestamps
    end
  end
end
