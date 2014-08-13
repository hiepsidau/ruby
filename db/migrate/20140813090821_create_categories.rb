class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

  end
  def change
	create_table :article_categories do |t|
	    t.integer :article_id
	   	t.integer :category_id
	end
  end
end
