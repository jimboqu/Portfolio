class Folio < ApplicationRecord
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body

  def self.angular
    where(subtitle: "Angular")
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image = "http://via.placeholder.com/600x300"
    self.thumb_image = "http://via.placeholder.com/350x200"
  end
end
