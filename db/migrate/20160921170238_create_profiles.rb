class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.attachment :avatar
      t.string :level
      t.integer :total
      t.integer :user_id

      t.timestamps
    end
  end
end
