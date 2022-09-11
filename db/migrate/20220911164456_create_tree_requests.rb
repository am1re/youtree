class CreateTreeRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :tree_requests do |t|
      t.string :status
      t.references :tree, null: false, foreign_key: true

      t.timestamps
    end
    add_index :tree_requests, :status
  end
end
