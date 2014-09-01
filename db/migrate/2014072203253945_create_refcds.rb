class CreateRefcds < ActiveRecord::Migration
  def change
    create_table :refcds do |t|
      t.string :recsts,:limit=>1,:default=>"0"
      t.string :groupcd
      t.string :typcd
      t.string :fdesc
      t.string :val1
      t.string :val2
      t.string :val
      t.string :url

      t.timestamps
    end
  end
end
