class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :damage
      t.boolean :wireless
      t.integer :ammo
      t.integer :misc
      t.references :character, index: true

      t.timestamps
    end
  end
end
