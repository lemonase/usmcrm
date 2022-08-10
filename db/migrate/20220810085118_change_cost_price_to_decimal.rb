class ChangeCostPriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column(:equipment, :cost, :decimal)
    change_column(:equipment, :price, :decimal)
  end
  def up
    change_column(:equipment, :cost, :decimal)
    change_column(:equipment, :price, :decimal)
  end
  def down
    change_column(:equipment, :cost, :integer)
    change_column(:equipment, :price, :integer)
  end
end
