class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :building, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :comment
      t.datetime :date_taken

      t.timestamps null: false
    end
  end
end
