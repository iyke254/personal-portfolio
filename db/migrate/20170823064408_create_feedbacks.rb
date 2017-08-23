class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
    	t.column :name, :string

    	t.column :content, :text

    	t.column :interger, rating
    	t.belongs_to :user, foreign_key: true
    end
  end
end
