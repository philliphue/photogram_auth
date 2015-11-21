class Comment < ActiveRecord::Base

  belongs_to :photo
  belongs_to :user

  validates :user, :presence => true
  validates :photo, :presence => true
  validates :body, :presence => true


end
