class Cop < ActiveRecord::Base
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :demeanor, presence: true

  after_create :push_notification

  private

  def push_notification
    #find your gps location (lat/long)
    #if the newly added cop is within .5 mile radius, alert user
    #send out notification message

  end

end
