class AddPart2ToFormN400s < ActiveRecord::Migration[5.2]
  def change
    add_column :form_n400s, :legal_last_name, :string
    add_column :form_n400s, :legal_first_name, :string
    add_column :form_n400s, :legal_middle_name, :string
    add_column :form_n400s, :resident_last_name, :string
    add_column :form_n400s, :resident_first_name, :string
    add_column :form_n400s, :resident_middle_name, :string
    add_column :form_n400s, :social_security, :string
    add_column :form_n400s, :uscis_number, :string
    add_column :form_n400s, :gender, :integer
    add_column :form_n400s, :date_of_birth, :date
    add_column :form_n400s, :date_permanent_resident, :date
    add_column :form_n400s, :birth_country, :string
    add_column :form_n400s, :citizen_country, :string
    add_column :form_n400s, :physical_disability, :integer
    add_column :form_n400s, :above_50, :integer
    add_column :form_n400s, :above_55, :integer
    add_column :form_n400s, :above_65, :integer
  end
end
