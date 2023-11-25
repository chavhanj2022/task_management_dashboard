class User < ApplicationRecord
  enum role: %i[standard manager admin] # Add roles as needed
  def admin?
    role == 'admin'
  end

  def manager?
    role == 'manager'
  end

  has_secure_password
end
