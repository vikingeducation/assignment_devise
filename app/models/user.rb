class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # , :trackable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  # Default devise modules
  # devise :database_authenticable, :registrable, :rememberable

  validates :first_name, length: {minimum: 1, maximum: 25}
  validates :last_name, length: {minimum: 1, maximum: 25}
  validates :email, :presence => true
end
