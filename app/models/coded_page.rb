class CodedPage < ActiveRecord::Base
  belongs_to :threadx
  has_one :user
  has_one :image
  
  def self.for_user(user)
    return where(1) if user.nil?
    where(:user_id => user.id)
  end
  
  def self.for_image(image)
    where(:image_id => image.id)
  end
  
end
