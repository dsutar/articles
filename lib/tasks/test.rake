require 'csv'

desc "testing rake task"
task :test_dev => [:environment] do

    CSV.foreach('test.csv', headers: true) do |row|

        rec = Article.new
        rec.title = row[0]
        rec.body = row[1]

        begin
            rec.save
          rescue Exception => e
            puts "error saving reocrds"
          end

    end

    puts "this is rake test"

end