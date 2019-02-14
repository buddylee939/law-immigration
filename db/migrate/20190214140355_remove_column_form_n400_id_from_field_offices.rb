class RemoveColumnFormN400IdFromFieldOffices < ActiveRecord::Migration[5.2]
  def change
    remove_column :field_offices, :form_n400_id, :integer
  end
end
