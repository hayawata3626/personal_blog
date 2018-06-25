class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :user_id, presence: true

  def user
    return User.find_by(id: self.user_id)
  end

  def getUserName
    return User.joins(:posts).select("users.name")
  end


end
