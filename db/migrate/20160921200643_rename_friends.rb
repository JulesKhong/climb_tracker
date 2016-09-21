class RenameFriends < ActiveRecord::Migration[5.0]
  def change
    rename_table :friends, :frienships
  end
end
