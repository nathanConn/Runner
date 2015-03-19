class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :sex
      t.integer :body
      t.integer :agility
      t.integer :reaction
      t.integer :strength
      t.integer :willpower
      t.integer :logic
      t.integer :intuition
      t.integer :charisma
      t.integer :edge
      t.float :essence

      t.timestamps
    end
  end
end
