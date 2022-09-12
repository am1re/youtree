class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :tree, null: false, foreign_key: true
      t.string :type
      t.text :description
      t.date :happened_at

      t.timestamps
    end
    add_index :events, :type
  end
end
