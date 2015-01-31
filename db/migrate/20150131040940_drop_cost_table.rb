class DropCostTable < ActiveRecord::Migration
  def change
    drop_table :costs
  end
end
