require_relative 'user_pb'  # Require the generated protobuf Ruby file

# Create an instance of User
user = Example::User.new(id: 1, name: 'John Doe', email: 'john@example.com')

# Print the user details
puts "Created user:"
puts "ID: #{user.id}"
puts "Name: #{user.name}"
puts "Email: #{user.email}"

# Serialize the user to a binary string
serialized_user = Example::User.encode(user)
puts "\nSerialized user to binary string."

# Deserialize the binary string back into a User object
deserialized_user = Example::User.decode(serialized_user)
puts "\nDeserialized user:"
puts "ID: #{deserialized_user.id}"
puts "Name: #{deserialized_user.name}"
puts "Email: #{deserialized_user.email}"