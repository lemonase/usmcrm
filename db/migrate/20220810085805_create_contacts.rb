class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :note

      t.timestamps
    end
  end
end
