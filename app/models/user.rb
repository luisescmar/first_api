class User < ApplicationRecord
  # encrypt pass
  has_secure_password

  # model association
  has_many :todos, foreign_key: :created_by, dependent: :destroy

  # model validation
  validates_presence_of :name, :email, :password_digest
end
