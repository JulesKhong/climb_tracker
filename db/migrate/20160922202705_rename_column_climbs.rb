class RenameColumnClimbs < ActiveRecord::Migration[5.0]
  def change
    rename_column :climbs, :set_id, :climbing_entry_id
  end
end
