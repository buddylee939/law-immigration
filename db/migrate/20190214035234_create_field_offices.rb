class CreateFieldOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :field_offices do |t|
      t.string :state
      t.string :name
      t.references :form_n400, foreign_key: true

      t.timestamps
    end
  end
end
