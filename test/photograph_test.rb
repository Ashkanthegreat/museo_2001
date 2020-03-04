require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require 'CSV'

class PhotographTest < Minitest::Test

  def test_it_exists
    photograph = Photograph.new(attributes)
    assert_instance_of Photograph, photograph
  end


end



# pry(main)> require './lib/artist'
# #=> true
#
# pry(main)> attributes = {
#   id: "1",
#   name: "Rue Mouffetard, Paris (Boy with Bottles)",
#   artist_id: "4",
#   year: "1954"
# }
#
# pry(main)> photograph = Photograph.new(attributes)
# #=> #<Photograph:0x00007fc2d1050c80...>
#
# pry(main)> photograph.id
# #=> "1"
#
# pry(main)> photograph.name
# #=> "Rue Mouffetard, Paris (Boy with Bottles)"
#
# pry(main)> photograph.artist_id
# #=> "4"
#
# pry(main)> photograph.year
# #=> "1954"
#
# pry(main)> attributes = {
#   id: "2",
#   name: "Ansel Adams",
#   born: "1902",
#   died: "1984",
#   country: "United States"
# }
