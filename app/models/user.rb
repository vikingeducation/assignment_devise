class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :email, presence: true
  validates :first_name, :last_name, presence: true, on: :update


  def name
    "#{first_name} #{last_name}"
  end
end
