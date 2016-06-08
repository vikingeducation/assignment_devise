class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, 
  # :recoverable, :rememberable, :trackable

  devise :database_authenticatable, :registerable, :validatable

  validates :username, :first_name, :last_name, presence: true

  validates :first_name, :last_name, length: {minimum: 3}
end
