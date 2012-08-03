class Post < ActiveRecord::Base
  attr_accessible :description, :heading

  belongs_to :user
end
