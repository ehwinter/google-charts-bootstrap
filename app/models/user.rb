class User < ActiveRecord::Base
  has_many :posts
  has_one :device  # TC otto_view device
  has_one :access  # TC Access code
  has_many :trips
  
  has_many :challenges, through: :challenges_users
  
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # removed: :recoverable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  

  
end
