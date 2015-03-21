class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :name
      t.integer :rating
      t.boolean :wireless
      t.references :character, index: true

      t.timestamps
    end
  end
end
