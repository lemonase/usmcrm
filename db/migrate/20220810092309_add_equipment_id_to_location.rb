class AddEquipmentIdToLocation < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :equipment_id, :integer
  end
end
