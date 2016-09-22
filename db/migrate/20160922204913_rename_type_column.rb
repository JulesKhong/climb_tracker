class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :climbing_entries, :type, :climbing_style
  end
end
