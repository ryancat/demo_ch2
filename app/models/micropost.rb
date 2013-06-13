class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  validates :content, :length => { :maximum => 140 }
  
  def user_name(mPost)
    return mPost.user_id
  end
  
end
