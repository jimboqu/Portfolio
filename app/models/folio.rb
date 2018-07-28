class Folio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body

  def self.angular
    where(subtitle: "Angular")
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: "600", width: "300")
    self.thumb_image ||= Placeholder.image_generator(height: "200", width: "350")
  end
end
