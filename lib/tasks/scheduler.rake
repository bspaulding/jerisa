namespace :db do
  namespace :backup do
    desc "Backup production task."
    task :production do
      puts "Backing up production..."
      puts %x[bundle exec heroku pgbackups:capture --expire --app jerisa-production]
#      puts %x[bundle exec heroku pgbackups --app jerisa-production]
    end

    desc "Backup staging task."
    task :staging do
      puts "Backing up staging..."
      puts %x[bundle exec heroku pgbackups:capture --expire --app jerisa-staging]
#      puts %x[bundle exec heroku pgbackups --app jerisa-staging]
    end

    task :all => [:production, :staging]
  end

  task :backup => ['backup:all']
end
