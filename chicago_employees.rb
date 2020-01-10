require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
employess =  response.parse

employess.each do |employee|
  puts "Name: #{employee["name"]}"
  puts "Job: #{employee["job_titles"]}"
  puts "Dept: #{employee["department"]}"



  if employee["salary_or_houry"] == "Salary"
      puts "Salary: #{employee["annual_salary"]}"

    else
      puts "Typical Hours: #{employee["typical_hours"]}"
      puts "hourly rate: #{employee["hourly_rate"]}"

      puts "#{}"


    p employee
    puts "=" * 30
  end

end
















# ==========================================================



# employess.each do |employee|
#   puts employee["name"]
#   puts employee["job_titles"]
#   puts employee["department"]
#   p employee
#   puts "=" * 30
# end