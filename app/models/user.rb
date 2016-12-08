class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :registerable, :database_authenticatable

  validates :username, presence: true, length: { minimum: 6 }, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates_format_of :email,:with => Devise::email_regexp
  validates :password, length: { minimum: 6 }, allow_nil: true
end
