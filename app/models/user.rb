class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  
  # attr_accessible :title, :body

  has_many :favorites
  has_many :favorite_stop_times, through: :favorites, class_name: "StopTime"

  validates_presence_of :username

  def find_for_database_authentication
  	
  end

end
