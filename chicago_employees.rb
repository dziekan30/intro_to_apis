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


require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
employees = response.parse

employees.each do |employee|
  puts "Name: #{employee["name"]}"
  puts "Job: #{employee["job_titles"]}"
  puts "Dept: #{employee["department"]}"

  puts

  if employee["salary_or_hourly"] == "Salary"
    puts "Salary: $#{employee["annual_salary"]}"
  else
    puts "Typical Hours: #{employee["typical_hours"]}"
    puts "Hourly Rate: #{employee["hourly_rate"]}"
    rate_per_week = employee["typical_hours"].to_i * employee["hourly_rate"].to_f
    puts "Estimated Salary: $#{ rate_per_week * 50 }"
  end

  puts
  puts "=" * 30
  puts
end













# ==========================================================



# employess.each do |employee|
#   puts employee["name"]
#   puts employee["job_titles"]
#   puts employee["department"]
#   p employee
#   puts "=" * 30
# end