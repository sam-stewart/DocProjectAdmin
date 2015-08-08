class Report < ActiveRecord::Base
  belongs_to :location
  belongs_to :animal
  validates :geolocation, :presence => true
  validates :blurb, :presence => true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
