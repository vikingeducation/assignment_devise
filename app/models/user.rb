class User < ActiveRecord::Base
  validates :username, :email,
            length: 1..32
end
