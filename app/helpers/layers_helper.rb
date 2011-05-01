module LayersHelper

  # Identify the midpoint of a series of points.
  # Uses a center of gravity technique, based off the
  # cartesian coordinates for each point.
  # Logic from: http://www.geomidpoint.com/calculation.html
  def midpoint(call_boxes = [], crime_alerts = [])
    return Coord.new(:latitude => 0, :longitude => 0) if call_boxes.nil? && crime_alerts.nil?

    x = y = z = 0
    if !call_boxes.nil?
      call_boxes.each do |call_box|
        unless call_box.latitude.nil? || call_box.longitude.nil?
          x += call_box.x
          y += call_box.y
          z += call_box.z
        end
      end
    end
    if !crime_alerts.nil?
      crime_alerts.each do |crime_alert|
        x += crime_alert.x
        y += crime_alert.y
        z += crime_alert.z
      end
    end
    size = 0
    if !call_boxes.nil?
      size += call_boxes.length
    end
    if !crime_alerts.nil?
      size += crime_alerts.length
    end
    x, y, z = x/size, y/size, z/size
    longitude = Math.atan2(y, x).radians
    hypotenuse = Math.sqrt(x * x + y * y)
    latitude = Math.atan2(z, hypotenuse).radians

   Coord.new(:latitude => latitude, :longitude => longitude)
  end

  # Generates a KML color given a hex color string.
  # Converts the format from #RRGGBB to AABBGGRR.
  # The alpha channel defaults to ff.
  def to_kmlcolor(color="#000000", alpha = "ff")
    alpha + color[5,3] + color[3,2] + color[1,2]
  end
end
