class User < ApplicationRecord
  validates_presence_of :email
  validates_presence_of :password_digest
  validates_presence_of :api_key
  validates_uniqueness_of :email, case_sensitive: false
  validates_uniqueness_of :api_key, case_sensitive: false
  has_secure_password

  before_save :downcase_email

  private

  def downcase_email
    email&.downcase!
  end
end