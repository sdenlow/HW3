Place.destroy_all

# Create places

mexico = Place.new
mexico["name"] = "Mexico City"
mexico.save

charleston = Place.new
charleston["name"] = "Charleston"
charleston.save

beijing = Place.new
beijing["name"] = "Beijing"
beijing.save

amsterdam = Place.new
amsterdam["name"] = "Amsterdam"
amsterdam.save

# Create entries

tacos = Entry.new
tacos["title"] = "Ate tacos"
tacos["description"] = "they were spicy"
tacos["occurred_on"] = "2022-01-01"
tacos["place_id"] = mexico.id
tacos.save

tacos = Entry.new
tacos["title"] = "Lisa and Jim's Wedding"
tacos["description"] = "dance dance dance"
tacos["occurred_on"] = "2022-01-01"
tacos["place_id"] = mexico.id
tacos.save

tacos = Entry.new
tacos["title"] = "Ate tacos again"
tacos["description"] = "Now they were sweet!"
tacos["occurred_on"] = "2022-01-01"
tacos["place_id"] = mexico.id
tacos.save

historic = Entry.new
historic["title"] = "carriage ride"
historic["description"] = "it was a lovely ride through the city"
historic["occurred_on"] = "2022-04-01"
historic["place_id"] = charleston.id
historic.save

iconic = Entry.new
iconic["title"] = "Great Wall of China"
iconic["description"] = "we hiked and hiked and hiked"
iconic["occurred_on"] = "2022-04-20"
iconic["place_id"] = beijing.id
iconic.save

charm = Entry.new
charm["title"] = "Van Gogh Museum"
charm["description"] = "saw some famous paintings"
charm["occurred_on"] = "2022-04-22"
charm["place_id"] = amsterdam.id
charm.save
