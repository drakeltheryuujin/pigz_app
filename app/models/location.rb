class Location
  attr_reader :lat, :lng

  def initialize(lat, lng)
    @lat = lat.to_f
    @lng = lng.to_f
  end

  def to_h
    { lat: @lat, lng: @lng }
  end

  def to_a
    [@lat, @lng]
  end

  def ==(o)
    o.class == self.class && o.state == self.state
  end

  protected

  def state
    [@lat, @lng]
  end
end
