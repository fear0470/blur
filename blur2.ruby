class Image
  def initialize(array)
    @image = array
  end

  
def get_pixels
    pixels = []
    @image.each_with_index do |row, row_number|
      row.each_with_index do |item, col_number|
        if item == 1
          pixels << [row_number, col_number]
        end
      end
    end
    pixels
  end

  def blur!
    pixels = get_pixels
      @image.each_with_index do |row, row_number|
        row.each_with_index do |item, col_number|
          pixels.each do |found_row_number, found_col_number|

            if row_number == found_row_number && col_number == found_col_number
              @image[row_number -1][col_number] = 1 unless row_number == 0 
              @image[row_number +1][col_number] = 1 unless row_number >= 4 
              @image[row_number][col_number -1] = 1 unless col_number == 0 
              @image[row_number][col_number +1] = 1 unless col_number >= 4 
            end
          end
        end
      end
     end

      def output_image
    @image.each do |row|
      puts row.join
    end
  end
end

  

image = Image.new([
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ])

puts 
image.blur!
image.output_image