class Cop < ActiveRecord::Base
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :demeanor, presence: true
end
