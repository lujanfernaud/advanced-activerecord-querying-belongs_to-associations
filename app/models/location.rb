class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    self.region.where("regions.name LIKE ?", "%#{region}%")
  end

  def self.region
    joins(:region)
  end
end
