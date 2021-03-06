class User < ActiveRecord::Base

  has_and_belongs_to_many :games

  has_secure_password

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false},
  format: {with: /@/}

  def display_name
    self.name || 'Anon'
  end

  # validates_presence_of :password, on: :create

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end

end
