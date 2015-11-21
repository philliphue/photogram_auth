class Like < ActiveRecord::Base

  belongs_to :user
  belongs_to :photo

  validates :user, :presence => true, :uniqueness => {:scope => :photo }
  validates :photo, :presence => true

end
