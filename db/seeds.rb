require 'open-uri'
require 'JSON'
require 'pry'
require_relative '../app/model/school'

  data = open('https://data.cityofnewyork.us/resource/734v-jeq5.json')

string = data.read


array_of_hashes = JSON.parse(string)



array_of_hashes.each do |hash|
  School.create(school: hash["school_name"], math_score: hash["sat_math_avg_score"], writing_score: hash["sat_writing_avg_score"], test_takers: hash["num_of_sat_test_takers"])
end



