class Cop < ActiveRecord::Base
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :demeanor, presence: true

  after_create :push_notification

  acts_as_mappable default_units: :kms,
                   default_formula: :sphere,
                   distance_field_name: :distance,
                   lat_column_name: :latitude,
                   lng_column_name: :longitude
end
