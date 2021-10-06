require 'active_record'

ActiveRecord::Base.configurations = YAML.load_file('mysql.yml')
ActiveRecord::Base.establish_connection :development

class Users < ActiveRecord::Base
  self.table_name = 'users'
end

a = Users.find(2)
puts "#{a.id}, #{a.email}"
