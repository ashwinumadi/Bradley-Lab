require 'yaml'

# Define the path to the input YAML file
input_file = 'ruby_scripts/people.yaml'

# Read the YAML file
data = YAML.load_file(input_file)

# Open the output Markdown file
output_file = '_pages/people.md'
File.open(output_file, 'w') do |file|
  # Write the header for current collaborators
  file.puts "<div id='people'>"
  file.puts '<h2> Current Research Collaborators</h2>'
  file.puts '</div>'
  file.puts

  # Write the current collaborators
  data['current_collaborators'].each do |collaborator|
    if collaborator['url']
      file.puts "- [**#{collaborator['name']}**](#{collaborator['url']}), #{collaborator['description']}"
    else
      file.puts "- **#{collaborator['name']}**, #{collaborator['description']}"
    end
  end
  file.puts

  # Write the header for alumni
  file.puts '<h2> Graduate/Postgraduate Research Alumni </h2>'
  file.puts

  # Write the alumni
  data['alumni'].each do |alum|
    if alum['url']
      file.puts "- [**#{alum['name']}**](#{alum['url']}), #{alum['description']}"
    else
      file.puts "- **#{alum['name']}**, #{alum['description']}"
    end
  end
end

puts "Markdown file generated: #{output_file}"
