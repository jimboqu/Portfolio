class Folio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :subtitle, :main_image, :thumb_image, :body
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }  
  def self.angular
    where(subtitle: "Angular")
  end

  mount_uploader :thumb_image, FolioUploader
  mount_uploader :main_image, FolioUploader

  def self.by_position
    order("position ASC")
  end
end
