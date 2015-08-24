require "bcrypt"

class Company < ActiveRecord::Base

  has_many :employees
  validates_presence_of :name

  def password=(new_password)
    @password = new_password
    self.encrypted_password = BCrypt::Password.create(@password)
  end

  def password
    @password
  end

  def valid_password?(password_to_validate)
  BCrypt::Password.new(encrypted_password) == password_to_validate
  end

validates_presence_of :email, :name, :password, :username
validates_uniqueness_of :email, :username
validates_length_of :password, minimum: 6
validates_length_of :username, minimum: 4
validates_confirmation_of :password
    
    private
    def company_params
      params.require(:company).permit(:name, :username, :email, :password, :password_confirmation)
    end

end
