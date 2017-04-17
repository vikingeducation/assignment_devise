class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  validates :first_name, length: { minimum: 4 }
  validates :last_name, length: { minimum: 4 }
end
