# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  description        :text
#  characteristics    :text
#  image_url          :string(255)
#  category_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_updated_at   :datetime
#  photo_file_size    :integer
#  photo_content_type :string(255)
#  photo_file_name    :string(255)
#

class Product < ActiveRecord::Base
  attr_accessible :category_id, :characteristics, :description, :image_url, :name, :photo
  has_attached_file :photo, :styles => { :small => "150x150>" },
                    #:url  => "/assets/products/:id/:style/:basename.:extension",
                    #:path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  #has_attached_file :avatar,
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"



  def short_description
    Utility.strip_html(self.description).first(100)
  end

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
