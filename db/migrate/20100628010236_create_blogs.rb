class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :name
      t.column :post, :text, :limit => 1000
      t.integer :author_id
      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
