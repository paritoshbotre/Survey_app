namespace "Custom_Task" do
  #desc "Use to find by name" do
    task :find_name, [:name] => :environment do |task, args|
      user = User.find_by_name(args[:name])
      puts user.name
    end
  #end

  #desc "Use to find by id" do
    task :find_id, [:id] => :environment do |task, args|
      user = User.find(args[:id])
      puts user.name
    end
  #end
end
