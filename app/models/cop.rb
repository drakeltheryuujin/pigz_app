class Cop < ActiveRecord::Base
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :racism_index, presence: true
  validates :gender, presence: true
  validates :skin_color, presence: true
  validates :body_type, presence: true
  after_create :push_notification

  private

  def push_notification(gps_coord)
    #find your gps location (lat/long)
    #if the newly added cop is within .5 mile radius, alert user
    #send out notification message
    
  end

end
