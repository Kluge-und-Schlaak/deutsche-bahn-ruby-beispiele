# frozen_string_literal: true

require 'pry'

class Auth
  def authenticate
    puts 'Please enter username'
    @username = gets.chomp

    puts 'Please enter password'
    @password = gets.chomp

    loop do
      users.each do |data|
        return puts('SUCCESS') if credentials_correct(data)
      end
    end
  end

  private

  def users
    [
      { username: 'Bob', password: 'secret' },
      { username: 'Alice', password: 'more_secret' }
    ]
  end

  def credentials_correct(data)
    data[:username] == @username && data[:password] == @password
  end
end

Auth.new.authenticate
