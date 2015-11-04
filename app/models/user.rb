class User < ActiveRecord::Base
  validates :username,
            :presence => true,
            :format => {:with => /[a-zA-Z0-9_]/}

  validates :email,
            :presence => true,
            :format => {:with => /@/}
end
