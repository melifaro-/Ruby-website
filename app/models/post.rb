# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :string(255)
#  createdate :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pcid       :integer
#

class Post < ActiveRecord::Base
  attr_accessible :createdate, :text, :title, :pcid
  validates :text, :presence => true
  validates :title, :presence => true

  POSTTYPES = ['News', 'Articles']

  def short_text
  	Utility.strip_html(self.text).first(200)
  end

  def post_type
    if 0 == self.pcid
      return 'News'
    else
      return 'Article'
    end
  end
end
