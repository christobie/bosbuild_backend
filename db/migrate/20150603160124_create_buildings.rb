class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :street_num
      t.string :street_name
      t.string :hood
      t.string :city
      t.text :zip

      t.timestamps null: false
    end
  end
end
