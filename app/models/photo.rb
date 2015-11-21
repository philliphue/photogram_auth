class Photo < ActiveRecord::Base

  belongs_to :user

  validates :user, :presence => true

  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user

end
