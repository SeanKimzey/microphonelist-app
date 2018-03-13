require 'Unirest'

# response = Unirest.post("http://localhost:3000/microphones", parameters: {
#   the_make: "blahblahblah",
#   the_model: "blahblahblah",
#   the_mic_type: "Tube",
#   the_price: "$5"

#    })

# puts JSON.pretty_generate(response.body)

# response = Unirest.delete("http://localhost:3000/microphones/7")

# puts JSON.pretty_generate(response.body)

response = Unirest.patch("localhost:3000/microphones/2", parameters: {
    input_make: "AKG???",
    input_model: "414",
    input_mictype: "Condenser",
    input_price: "9967"
  }
)
puts JSON.pretty_generate(response.body)