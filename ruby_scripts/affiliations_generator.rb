require 'yaml'

# Define the path to the input YAML file
input_file = 'ruby_scripts/affiliations.yaml'

# Read the YAML file
data = YAML.load_file(input_file)

# Open the output Markdown file
output_file = '_pages/other_affiliations.md'
File.open(output_file, 'w') do |file|
  # Write the header for affiliations
  file.puts '<h3>'
  file.puts 'Other Affiliations'
  file.puts '</h3>'
  file.puts

  # Loop through the affiliations and write them to the file
  data['affiliations'].each do |affiliation|
    name = affiliation['name']
    url = affiliation['url']
    extra_link = affiliation['extra_link']
    extra_text = affiliation['extra_text']

    if extra_link && extra_text
      file.puts "- The <a href='#{url}'><b>#{name}</b></a> <a href=\"#{extra_link}\">#{extra_text}</a>"
    else
      file.puts "- The <a href='#{url}'><b>#{name}</b></a>"
    end
  end
end

puts "Markdown file generated: #{output_file}"
