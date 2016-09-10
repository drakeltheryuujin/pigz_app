class Cop < ActiveRecord::Base
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :racism_index, presence: true
  validates :gender, presence: true
  validates :skin_color, presence: true
  validates :body_type, presence: true

end
