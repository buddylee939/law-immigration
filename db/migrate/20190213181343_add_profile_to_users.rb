class AddProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :bio, :text
    add_column :users, :twitter, :string
    add_column :users, :github, :string
    add_column :users, :website, :string
  end
end
