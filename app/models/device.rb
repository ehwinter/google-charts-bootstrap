class Device < ActiveRecord::Base
  belongs_to :user
  attr_accessible :device, :user_id
end
