class User < ActiveRecord::Base
  def self.authenticate(username, password)
    User.find_by_username_and_password(username, password)
  end
end
