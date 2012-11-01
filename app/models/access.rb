class Access < ActiveRecord::Base
  belongs_to :user
  attr_accessible :code, :location, :user_id, :username

end
