class CreateCoarses < ActiveRecord::Migration
  def change
    create_table :coarses do |t|
      t.string :name
      t.timestamps
    end
  end
end
