class Item < ApplicationRecord

  # model asociation
  belongs_to :todo

  # Validation test
  validates_presence_of :name
end
