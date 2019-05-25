class Image
  def initialize(image)
    @image = image
  end

  def output_image
    @image.each { |i| puts i.join("") }
  end

  def blur
     if image.each == 1
      print "blur part 1"
    else
      print "blur part 5"
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])


row1 = [0, 0, 0, 0]
row2 = [0, 1, 0, 0]
row3 = [0, 0, 0, 1]
row4 = [0, 0, 0, 0]


image.output_image




