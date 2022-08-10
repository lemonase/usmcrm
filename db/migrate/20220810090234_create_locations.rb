class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :postal
      t.string :country
      t.integer :phone
      t.text :note

      t.timestamps
    end
  end
end
