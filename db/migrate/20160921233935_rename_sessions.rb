class RenameSessions < ActiveRecord::Migration[5.0]
  def change
    rename_table :sessions, :sets
  end
end
