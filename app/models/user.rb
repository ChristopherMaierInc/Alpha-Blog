class User < ApplicationRecord
  has_many :comments
  validates :username, presence: true, uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX=
  /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
  validates :email, presence: true, length: { maximum: 100 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
end
