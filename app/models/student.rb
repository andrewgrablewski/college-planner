class Student < ApplicationRecord
  before_save { self.email = email.downcase}
  validates :name, presence: true, length: {minimum: 5, maximum: 50}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false},
                                   length: { maximum: 105},
                                   format: {with:VALID_EMAIL_REGEX }



end
