class Folio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda {|attrs| attrs['name'].blank?}
  def self.angular
    where(subtitle: "Angular")
  end

  mount_uploader :thumb_image, FolioUploader
  mount_uploader :main_image, FolioUploader

  after_initialize :set_defaults

  def self.by_position
    order("position ASC")
  end

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: "600", width: "400")
    self.thumb_image ||= Placeholder.image_generator(height: "200", width: "350")
  end
end
