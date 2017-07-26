class Address < ApplicationRecord
  geocoded_by :full_address, :latitude => :latitude, :longitude => :longitude
  after_validation :geocode, if: ->(obj){ obj.full_address.present?}

  belongs_to :user

  def full_address
    [street, ward, district, city, country].compact.join(', ')
  end

end
