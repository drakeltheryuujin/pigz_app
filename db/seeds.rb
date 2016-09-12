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
  [40.729967, -73.998378, 0, 0, 0, 0],
  [40.730220, -73.997930, 0, 0, 0, 0],
  [40.729825, -73.999566, 0, 0, 0, 0],
  [40.731933, -73.998034, 0, 0, 0, 0],
  [40.728135, -73.995690, 0, 0, 0, 0],
  [40.728625, -73.999566, 0, 0, 0, 0],
  [40.727725, -74.001389, 0, 0, 0, 0]
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
