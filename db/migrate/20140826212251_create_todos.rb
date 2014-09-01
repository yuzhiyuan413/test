class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :done,:limit=>1,:default=>"1"
      t.string :recsts,:limit=>1,:default=>"0"
      t.timestamps
    end
  end
end
