require 'Unirest'

# response = Unirest.post("http://localhost:3000/microphones", parameters: {
#   the_make: "blahblahblah",
#   the_model: "blahblahblah",
#   the_mic_type: "Tube",
#   the_price: "$5"

#    })

# puts JSON.pretty_generate(response.body)

response = Unirest.delete("http://localhost:3000/microphones/4")

 
puts JSON.pretty_generate(response.body)