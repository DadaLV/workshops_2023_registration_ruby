class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$%&*\+=:;?<>]).{6,24}$/
    regex.match?(@password) && !@password.scan(/(.)\1{2,}/).any?
  end
end
