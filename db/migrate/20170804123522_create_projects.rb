class CreateProjects < ActiveRecord::Migration[5.1]
    def change
      create_table :projects do |t|
        t.column :description, :string
        t.column :language_id, :integer

        t.timestamps
      end
    end
  end