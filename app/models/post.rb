class Post < ActiveRecord::Base
  attr_accessible :description, :heading, :user_id, :photo

  validates_attachment_size :photo, :less_than => 5.megabytes
  has_attached_file :photo,
                    :styles => {
                        :small => "150x150#",
                    }

  belongs_to :user
end
