class ChangeEventTypeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :type, :kind
  end
end
