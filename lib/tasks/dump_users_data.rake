#define namespace
namespace :tasks do
  desc 'My Custom Task'
=begin
task :dump_user_data, [:id,:name] => :environment do |task, args|
  args.with_defaults(:name => "Roman")
  p args[:name]
  p args[:id]
  puts "-------------------"
  user = User.find(args[:id])
  name =  user.name
  puts name
  puts "--------------------"
  user = User.find_by_name(args[:name])
  puts user.name
end
=end
  task :task1, [:args1] => :environment do |task, args|
    args.with_defaults(args1: "default value")
    p args[:args1]

    #allow variable number of arguments
    p args.extras
  end
end
