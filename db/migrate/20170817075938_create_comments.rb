class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.column :description, :string
    	t.column :blog_id, :integer

    	t.timestamps
    end
  end
end
