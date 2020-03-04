require "CSV"
require './lib/photograph'

CSV.foreach('.data/photograph.csv', headers: true, header_converters: :symbol) do |row|
  id = row[:id].to_s
  name = row[:name]
  artist_id = row[:artist_id].to_s
  year = row[:year].to_s
  photograph = Photograph.new(id, name, artist_id, year)
end
