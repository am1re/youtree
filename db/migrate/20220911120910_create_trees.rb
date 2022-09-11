class CreateTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :trees do |t|
      t.float :longitude
      t.float :latitude
      t.text :description
      t.boolean :visible
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
