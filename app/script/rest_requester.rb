require 'rest-client'
puts "create,edit,index,new, or show?"
command = gets.chomp
puts case command
when 'edit'
  puts "What id to edit?"
  id = gets.chomp
  prefix = 'edit_user'
  verb = 'get'
  
when 'index'
  prefix = 'users'
  verb = 'get'

  
when 'new'
  puts "What id to assign for new user?"
  id = gets.chomp
  prefix = "new_user"
  verb = 'get'

when 'show'
  puts "What id to show?"
  id = gets.chomp
  prefix = "user"
  verb = 'get'
  
when 'create'
  verb = 'post'
  
else
  puts "Not a proper request"
  exit
end

url = "http://localhost:3000/"
if verb === 'get'
  url = "http://localhost:3000/"
  url + 'prefix' + '/#{id.to_s}' unless verb === 'user'
  puts RestClient.get(url)
elsif verb === 'post'
  puts RestClient.post(url + '/user/1','')
end