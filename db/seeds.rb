# We can make this smarter later. For now, let's just make some coppers.

hotspots = []

near_generaly_assembly = [
  [40.740072, -73.989963, 0, 0, 0, 0],
  [40.740760, -73.993505, 0, 0, 0, 0],
  [40.740072, -73.989963, 0, 0, 0, 0],
  [40.741936, -73.988548, 0, 0, 0, 0],
  [40.742619, -73.987096, 0, 0, 0, 0],
  [40.733065, -73.984444, 0, 0, 0, 0],
  [40.735253, -73.985721, 0, 0, 0, 0],
  [40.737590, -73.986153, 0, 0, 0, 0],
  [40.740344, -73.986546, 0, 0, 0, 0],
  [40.740939, -73.988137, 0, 0, 0, 0]
]

near_skirball = [
  [40.726658, -73.998995, 0, 0, 0, 0],
  [40.723732, -73.996470, 0, 0, 0, 0],
  [40.723815, -74.000404, 0, 0, 0, 0],
  [40.725701, -73.992061, 0, 0, 0, 0],
  [40.728294, -74.002746, 0, 0, 0, 0]
]

hotspots << near_generaly_assembly
hotspots << near_skirball

hotspots.each do |hotspot|
  hotspot.each do |latitude, longitude, demeanor, activity, status, persona|
    Cop.find_or_create_by(
      latitude: latitude,
      longitude: longitude,
      demeanor: demeanor,
      activity: activity,
      status: status,
      persona: persona)
  end
end
