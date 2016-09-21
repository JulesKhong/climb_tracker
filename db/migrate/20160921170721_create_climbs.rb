class CreateClimbs < ActiveRecord::Migration[5.0]
  def change
    create_table :climbs do |t|
      t.integer :height
      t.string :rating
      t.integer :rating_int
      t.integer :session_id
    end
  end
end
