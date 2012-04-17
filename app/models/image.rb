class Image < ActiveRecord::Base

  validates :name, :description, :url, :presence => true


  scope :newest, Image.order("updated_at Desc")
  scope :oldest, Image.order("updated_at")
 # scope :filter_by_description, lambda {|description| where("description = ?", description) }

  def self.search(name, description)
    Image.where('name = ? AND description = ?', name, description)
  end

  # def self.recent
  #   last_image = Image.last
  #   search(last_image.name, last_image.description)
  # end

end
