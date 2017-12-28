class EmailError < StandardError
end
class UserAccountValidator
  attr_reader :email, :username, :name
  def initialize(user)
    @email = user[:email]
    @username = user[:username]
    @name = user[:name]
end

def validate
  if @email.nil? || @email.empty?
    raise EmailError, "Missing email address"
  elsif !@email.include? ("@")
    raise "Missing '@' symbol"
  elsif @username.nil? || @username.empty?
    raise "Missing username"
  end
end

end
