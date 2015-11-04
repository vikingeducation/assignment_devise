class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable

  validates :username,
            :presence => true,
            :format => {:with => /[a-zA-Z0-9_]+/}

  validates :email,
            :presence => true,
            :format => {:with => /@/}

  validates :first_name,
            :presence => true,
            :length => {:in => 2..32}

  validates :last_name,
            :presence => true,
            :length => {:in => 2..32}
end
