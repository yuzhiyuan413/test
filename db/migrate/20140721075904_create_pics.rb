class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
    	t.string :recsts,:limit=>1,:default=>"0"
      t.string :title
      t.string :piccd
      t.string :path
      t.integer :idcd
      t.timestamps
    end
  end
end
