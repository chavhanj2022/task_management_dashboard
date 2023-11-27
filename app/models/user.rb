class User < ApplicationRecord

  
  has_secure_password
  #enum role: %i[standard manager admin] # Add roles as needed
  ROLE = ["admin", "manager", "developer"]

  def admin?
    role == 'admin'
  end

  def manager?
    role == 'manager'
  end



  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 8 }#, allow_nil: true # allow_nil allows updating other user attributes without requiring a password

  before_save :downcase_email

  private

  def downcase_email
    self.email = email.downcase if email.present?
  end
end
