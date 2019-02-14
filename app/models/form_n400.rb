class FormN400 < ApplicationRecord
  belongs_to :user
  has_one :field_office
end
