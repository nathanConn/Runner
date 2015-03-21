class AddMiscToArmor < ActiveRecord::Migration
  def change
    add_column :armors, :misc, :integer
  end
end
