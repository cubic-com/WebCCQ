task :populate do 
  sh "ruby '#{Dir.pwd}/db/migrate/popufake_webccq.rb'"
  # Load ccq_trade code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_trades"
  # Load ccq_sector code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_sectors"
  # Load ccq_qualification code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_qualifications"
  # Load ccq_qualification code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_schedules"

end
