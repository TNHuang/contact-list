require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html',
  query_values: {
      'some_category[a_key]' => 'another value',
      'some_category[a_second_key]' => 'yet another value',
      'some_category[inner_inner_hash][key]' => 'value',
      'something_else' => 'aaahhhhh'
    }
).to_s

puts RestClient.get(url)

def create_user
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json'
  ).to_s

  puts RestClient.post(
  url,
  { user: {name: "Gizmo", email: "gizmo@gizmo.gizmo" } }
  )
end
#stuff we need to do
#add index function in userscontroller
#it's trying to explicting call render, stop that
#forget about template, just use render text: I'm in the index action!
#might want to root to index
#how to make gets request to user? use curl -0 url pattern or use postman, or make a new addressable URI object

#store nested parameters inside query_values
#some_category[stuff] = sample_value

#make bunch of get and post call

#render in json:

#make create user function, use RestClient to make new user

#

