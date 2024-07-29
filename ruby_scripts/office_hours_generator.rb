require 'yaml'

# Load the YAML file
data = YAML.load_file('ruby_scripts/office_hours.yaml')

# Open the markdown file for writing
File.open('_pages/office_hours.md', 'w') do |file|
  data.each do |season, info|
    file.puts "<h3>"
    file.puts info['title']
    file.puts "</h3>"
    file.puts
    file.puts info['details']
    file.puts
  end
end
