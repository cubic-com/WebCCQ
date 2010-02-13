task :populate do 
  sh "ruby '#{Dir.pwd}/db/migrate/popufake_webccq.rb'"
  #sh "ruby '/home/andre/Ruby Script/OpenAccountAPI/db/migrate/data/popufake_customer.rb'"
end
