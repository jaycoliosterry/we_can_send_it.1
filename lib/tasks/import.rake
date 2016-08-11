require 'csv'

desc "Import countries from csv file"
task :import => [:environment] do

  file = "db/express_countries.csv"

  CSV.foreach(file, :headers => true) do |row|
    ExpressCountries.create
  end

end