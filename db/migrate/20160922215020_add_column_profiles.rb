class AddColumnProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :total_climbs, :integer
  end
end
