class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # , :trackable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  # Default devise modules
  # devise :database_authenticable, :registrable, :rememberable

  # validates :username, :presence => true
  validates :email, :presence => true


  attr_accessor :username, :email, :password, :password_confirmation
end
