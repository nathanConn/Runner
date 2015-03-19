class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :value
      t.references :character, index: true

      t.timestamps
    end
  end
end
