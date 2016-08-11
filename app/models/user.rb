class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable

  validates :first_name, :last_name, presence: true, 
                                     length: { in: (1..255) }
end
