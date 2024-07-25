require 'yaml'

# Define the path to the input YAML file
input_file = 'ruby_scripts/office_hours.yaml'

# Read the YAML file
data = YAML.load_file(input_file)

# Ensure the data is loaded correctly
if data.nil? || !data.key?('office_hours')
  puts "Error: YAML data is not structured as expected."
  exit
end

# Extract office hours data
office_hours = data['office_hours']
header = office_hours['header']
details = office_hours['details']

# Open the output Markdown file
output_file = '_pages/office_hours.md'
File.open(output_file, 'w') do |file|
  # Write the header for office hours
  file.puts '<h3>'
  file.puts header
  file.puts '</h3>'
  file.puts

  # Write the office hours details
  file.puts "- #{details}"
end

puts "Markdown file generated: #{output_file}"
