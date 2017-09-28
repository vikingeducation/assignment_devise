class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :recoverable, :rememberable, :trackable, :validatable,
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable

  validates :username, :first_name, :last_name, :email,
            presence: true

  validates :username, :first_name, :last_name,
            length: { minimum: 2 }

  validates :email,
            format: { with: /@/ },
            length: { minimum: 3 }
end
