class Folio < ApplicationRecord
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body

  def self.angular
    where(subtitle: "Angular")
  end
end
