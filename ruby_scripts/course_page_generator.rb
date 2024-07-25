require 'yaml'

# Define the path to the input YAML file
input_file = 'ruby_scripts/courses.yaml'

# Read the YAML file
courses = YAML.load_file(input_file)

# Open the output Markdown file
output_file = '_pages/course_materials.md'
File.open(output_file, 'w') do |file|
  # Write the header
  file.puts '---'
  file.puts 'layout: general_content'
  file.puts 'permalink: /course_materials/'
  file.puts '---'
  file.puts

  # Write the courses
  courses.each do |course|
    file.puts '<h3>'
    file.puts '<li>'
    file.puts "<a href=\"#{course['href']}\"><b>#{course['name']}</b></a>"
    file.puts '</li>'
    file.puts '</h3>'
    file.puts
  end
end

puts "Markdown file generated: #{output_file}"
