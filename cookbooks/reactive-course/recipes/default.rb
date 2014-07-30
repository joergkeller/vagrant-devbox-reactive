execute "prepare workspace" do
  command "mkdir -p /home/developer/workspace"
end

execute "download project" do
  cwd "/home/developer/workspace"
  command "git clone https://github.com/joergkeller/reactive-java8-play.git"
end

execute "prepare scripts" do
  cwd "/home/developer/workspace/reactive-java8-play"
  command "chmod +x activator; chmod +x fake-smtp/smtp-start"
end

execute "create mysql database" do
  cwd "/home/developer/workspace/reactive-java8-play"
  command "mysql -u root <installation/create-db.sql >installation/db.log"
end

execute "create eclipse project" do
  cwd "/home/developer/workspace/reactive-java8-play"
  command "./activator eclipse"
end

# execute "run fakeSMTP, Play server, tests" do
  # cwd "/home/developer/workspace/reactive-java8-play"
  # command "fake-smtp/smtp-start &; ./activator run &; ./activator test"
# end
