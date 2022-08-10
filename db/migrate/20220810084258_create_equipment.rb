class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :serial
      t.string :make
      t.string :model
      t.text :description
      t.date :warranty_expiration
      t.integer :cost
      t.integer :price
      t.text :note
      t.string :condition

      t.timestamps
    end
    add_index :equipment, :serial, unique: true
  end
end
