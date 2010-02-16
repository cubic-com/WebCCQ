task :resetdatabase do 
  sh "rake db:migrate VERSION=0"
  sh "rake db:migrate "
  sh "ruby '#{Dir.pwd}/db/migrate/popufake_webccq.rb'"
  # Load ccq_trade code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_trades"
  # Load ccq_sector code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_sectors"
  # Load ccq_qualification code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_qualifications"
  # Load ccq_qualification code from fixture
  sh "rake db:fixtures:load FIXTURES=employe_ccq_schedules"
  sh "rake db:fixtures:load FIXTURES=contacts"
  sh "rake db:fixtures:load FIXTURES=suppliers"
  sh "rake db:fixtures:load FIXTURES=customers"
  sh "rake db:fixtures:load FIXTURES=projects"
  sh "rake db:fixtures:load FIXTURES=employe_pay_infos"
end

