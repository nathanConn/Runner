class CreateBiowares < ActiveRecord::Migration
  def change
    create_table :biowares do |t|
      t.string :name
      t.integer :rating
      t.string :notes
      t.boolean :wireless
      t.float :essence
      t.references :character, index: true

      t.timestamps
    end
  end
end
