class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :bio
	  t.date :birthday
      t.timestamps
    end
  end
end
