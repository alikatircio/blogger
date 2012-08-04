class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :photo
  # attr_accessible :title, :body

   has_many :posts
   has_many :comments
  has_attached_file :photo,
                    :default_url => "/assets/default-avatar.gif",
                    :styles => {
                        :small => "120x120#",
                    }


end
