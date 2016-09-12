class Direction
  attr_reader :origin, :destination

  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  def route
    gmaps.directions(
      origin.to_h,
      destination.to_h,
      mode: "walking",
      alternatives: false,
      optimize_waypoints: false,
      waypoints: waypoints
    )
  end

  def waypoints
    []
  end

  private

  def gmaps
    @gmaps ||= GoogleMapsService::Client.new
  end
end
