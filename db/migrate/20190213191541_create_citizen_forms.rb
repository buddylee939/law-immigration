class CreateCitizenForms < ActiveRecord::Migration[5.2]
  def change
    create_table :citizen_forms do |t|
      t.string :name
      t.date :date_of_birth
      t.text :bio
      t.string :twitter
      t.string :github
      t.string :website
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
