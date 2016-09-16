class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.float :lat
      t.float :lng
      t.string :name
      t.string :address
      t.boolean :available
      t.string :slug
      t.boolean :has_camera
      t.boolean :has_watchman
      t.string :zip_code
      t.string :district
      t.string :city
      t.string :main_picture
      t.decimal :price_month, precision: 10, scale: 2, default: 0
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
