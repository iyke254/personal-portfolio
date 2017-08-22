class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
    	t.column :name, :string
    	t.column :content, :text

    end
  end
end
