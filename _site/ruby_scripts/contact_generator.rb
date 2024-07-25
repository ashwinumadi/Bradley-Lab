require 'yaml'

# Define the path to the input YAML file
input_file = 'ruby_scripts/contact.yaml'

# Read the YAML file
data = YAML.load_file(input_file)

# Open the output Markdown file
output_file = '_pages/contact.md'
File.open(output_file, 'w') do |file|
  # Write the header for contact information
  file.puts "<div id='contact'>"
  file.puts '<h2> Contact Information </h2>'
  file.puts '</div>'
  file.puts

  # Loop through the contact details and write them to the file
  data['contact'].each do |contact|
    label = contact['label']
    value = contact['value']

    case contact['type']
    when 'email'
      formatted_value = value.gsub('@', '(at)').gsub('.', '[dot]').gsub('.', '{dot}')
      file.puts "<pre style=\"font-size: medium;\"><b>#{label}:</b> <a href=\"mailto:#{value}\">#{formatted_value}</a></pre>"
    when 'url'
      file.puts "<pre style=\"font-size: medium;\"><b>#{label}:</b><a href=\"#{value}\">Website</a></pre>"
    else
      file.puts "<pre style=\"font-size: medium;\"><b>#{label}:</b>#{value}</pre>"
    end
  end
end

puts "Markdown file generated: #{output_file}"
