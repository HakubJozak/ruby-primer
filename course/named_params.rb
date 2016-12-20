def create_user(name,password)
  @name = name
  @password = password
end

# create_user('jakub','dslkjfdslf')

def create_user(hash)
  @name = hash[:login]
  @password = hash[:password]  
end

# create_user(login: 'jakub',
#             password:'blalalalala')


def create_user(login, options = {}) 
  @name = login

  if options[:password]
    @password = options[:password]
  end
end

# create_user('jakub')
# create_user('jakub', password:'blalalalala')


def create_user(login:, password:, email: nil)
  @name = login
  @password = password
end

# create_user login: 'jakub', password: '...'
# create_user password: '...', login: 'jakub'
# create_user login: 'jakub'
