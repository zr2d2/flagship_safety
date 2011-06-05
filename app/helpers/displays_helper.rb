module DisplaysHelper

  # Identify the midpoint of a series of points.
  # Uses a center of gravity technique, based off the
  # cartesian coordinates for each point.
  # Logic from: http://www.geomidpoint.com/calculation.html
  def midpoint3(layers = [])
    return Coord.new(:latitude => 0, :longitude => 0) if layers.nil?

    x = y = z = size = 0
    layers.each do |layer|
      if !layer.call_boxes.nil?
        layer.call_boxes.each do |call_box|
          unless call_box.latitude.blank? || call_box.longitude.blank?
            x += call_box.x
            y += call_box.y
            z += call_box.z
          end
        end
        size += layer.call_boxes.length
      end
      if !layer.crime_alerts.nil?
        layer.crime_alerts.each do |crime_alert|
          unless crime_alert.latitude.blank? || crime_alert.longitude.blank?
            x += crime_alert.x
            y += crime_alert.y
            z += crime_alert.z
            size += 1
          end
        end
      end
    end
    if size.zero?
      return Coord.new(:latitude => 42.730983, :longitude => -73.6669)
    end

    x, y, z = x/size, y/size, z/size

    hypotenuse = Math.sqrt(x * x + y * y)
    longitude = Math.atan2(y, x).radians
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
