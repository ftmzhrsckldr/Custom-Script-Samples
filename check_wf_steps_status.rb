require 'json'

puts "AC_BUILD_STATUS: #{ENV['AC_BUILD_STATUS']}"
# Read the environment variable
json_data = ENV['AC_BUILD_STEPS_STATUS']

begin
  # Parse and beautify the JSON
  parsed_data = JSON.parse(json_data)
  pretty_json = JSON.pretty_generate(parsed_data)
  
  # Output the formatted JSON
  puts "AC_BUILD_STEPS_STATUS:"
  puts pretty_json
rescue JSON::ParserError => e
  puts "Failed to parse JSON: #{e.message}"
end
