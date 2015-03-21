class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :rating
      t.boolean :wireless
      t.string :misc
      t.references :character, index: true

      t.timestamps
    end
  end
end
