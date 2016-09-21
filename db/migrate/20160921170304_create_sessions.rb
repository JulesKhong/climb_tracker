class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :notes
      t.string :type
      t.string :location
      t.integer :profile_id
      t.date :date
      t.time :time

    end
  end
end
