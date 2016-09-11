# We can make this smarter later. For now, let's just make some coppers.

cop_details = [
  [40.740072, -73.989963, 10],
  [40.740760, -73.993505, 10],
  [40.740072, -73.989963, 10],
  [40.741936, -73.988548, 10],
  [40.742619, -73.987096, 10],
  [40.733065, -73.984444, 10],
  [40.735253, -73.985721, 10],
  [40.737590, -73.986153, 10],
  [40.740344, -73.986546, 10],
  [40.740939, -73.988137, 10]
]

cop_details.each do |latitude, longitude, demeanor|
  Cop.find_or_create_by(latitude: latitude, longitude: longitude, demeanor: demeanor)
end
