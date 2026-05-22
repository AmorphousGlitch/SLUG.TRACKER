User.find_or_create_by!(username: "skater") do |u|
  u.password = "password"
end
puts "Seeded user 'skater' with password 'password'"
