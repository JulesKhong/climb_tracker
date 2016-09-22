class RenameSet < ActiveRecord::Migration[5.0]
  def change
    rename_table :sets, :climbing_entries
  end
end
