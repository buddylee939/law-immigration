class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :string
    remove_column :users, :date_of_birth, :date
    remove_column :users, :bio, :text
    remove_column :users, :twitter, :string
    remove_column :users, :github, :string
    remove_column :users, :website, :string
  end
end
