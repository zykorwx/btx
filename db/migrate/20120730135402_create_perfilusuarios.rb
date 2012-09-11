class CreatePerfilusuarios < ActiveRecord::Migration
  def change
    create_table :perfilusuarios, :primary_key => "email", :id => false do |t|

      t.timestamps
    end
  end
end
