class Todo < ApplicationRecord

  # model asociation
  has_many :items, dependent: :destroy

  # model validation
  validates_presence_of :title, :created_by
end
