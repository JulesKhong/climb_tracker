class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :climbs, :session_id, :set_id
  end
end
