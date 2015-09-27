class User < ActiveRecord::Base
  has_many :users
  def self.current
    self.current[:user]
  end
  def self.current=(user)
    self.current[:user] = user
  end
# User.current
# User.current=

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
