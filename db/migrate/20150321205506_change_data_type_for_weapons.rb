class ChangeDataTypeForWeapons < ActiveRecord::Migration
  def change
  	change_column :weapons, :misc, :string
  	change_column :armors, :misc, :string
  end
end
