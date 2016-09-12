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
    if @destination == ifc_center
      ifc_center_detour
    elsif @destination == comedy_cellar
      comedy_cellar_detour
    else
      []
    end
  end

  protected

  def ifc_center_detour
    [
      Location.new(40.730314, -73.998107).to_h,
      Location.new(40.731080, -73.999649).to_h
    ]
  end

  def comedy_cellar_detour
    [
      Location.new(40.727038, -73.999868).to_h,
      Location.new(40.727362, -74.000649).to_h,
      Location.new(40.728428, -73.999722).to_h,
      Location.new(40.729178, -74.001222).to_h
    ]
  end

  def gmaps
    @gmaps ||= GoogleMapsService::Client.new
  end

  def skirball
    @skirball ||= Location.new(40.729721, -73.997603)
  end

  def ifc_center
    ifc_center ||= Location.new(40.731140, -74.001495)
  end

  def comedy_cellar
    comedy_cellar = Location.new(40.730133, -74.000480)
  end
end
