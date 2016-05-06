namespace :db do
  namespace :seed do
    task :single => :environment do
      filename = Dir[File.join(Rails.root, 'db', 'seeds', "#{ENV['SEED']}.seed.rb")][0]
      puts "Seeding #{ENV['SEED']}.seed.rb..."
      load(filename) if File.exist?(filename)
    end
  end
end
