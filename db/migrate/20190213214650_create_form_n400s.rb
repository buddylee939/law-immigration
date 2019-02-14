class CreateFormN400s < ActiveRecord::Migration[5.2]
  def change
    create_table :form_n400s do |t|
      t.string :nine_digit_number
      t.boolean :citizen_5_years
      t.boolean :citizen_3_years
      t.boolean :citizen_spouse
      t.boolean :military_service
      t.boolean :other
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
