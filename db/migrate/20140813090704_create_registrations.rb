class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :coarse_id
      t.integer :student_id
      t.date :registered_at
      t.timestamps
    end
  end
end
