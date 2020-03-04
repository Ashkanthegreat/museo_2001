require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require 'CSV'

class PhotographTest < Minitest::Test

  def test_it_exists
    attributes = {
    id: "1",
    name: "Rue Mouffetard, Paris (Boy with Bottles)",
    artist_id: "4",
    year: "1954"
    }
    photograph = Photograph.new(attributes)
    assert_instance_of Photograph, photograph
  end

  def test_it_has_attributes
    attributes = {
    id: "1",
    name: "Rue Mouffetard, Paris (Boy with Bottles)",
    artist_id: "4",
    year: "1954"
    }
    photograph = Photograph.new(attributes)
    assert_equal '1', photograph.id
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.name
    assert_equal '4', photograph.artist_id
    assert_equal '1954', photograph.year


  end


end

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
