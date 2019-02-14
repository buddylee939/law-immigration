class AddFieldOfficeToFormN400 < ActiveRecord::Migration[5.2]
  def change
    add_column :form_n400s, :field_office_id, :integer
  end
end
