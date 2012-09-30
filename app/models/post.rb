class Post < ActiveRecord::Base
  attr_accessible :createdate, :text, :title
  validates :text, :presence => true
  validates :title, :presence => true
end
