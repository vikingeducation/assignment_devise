class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable,
  # :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable, :authentication_keys => [:username]

  validates :username, :email, :first_name, :last_name, :presence => true
  validates :username, :length => { in: 3..12 }
  validates :first_name, :last_name, :length => { in: 1..24 }
end
