class AddNameAndContentToBlogs < ActiveRecord::Migration[5.1]
  def change
  	add_column :blogs, :name, :string
  	add_column :blogs, :content, :text

  end
end