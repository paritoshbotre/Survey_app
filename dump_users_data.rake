desc "dump the user"
task :dump_users_data => :environment do
  puts "Hi in rake task"
  user1 = User.first
  puts user1.name
end
