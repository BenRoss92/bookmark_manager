require 'bcrypt'

class User

include DataMapper::Resource

property :id, Serial
property :email, String, required: true, unique: true
property :password, BCryptHash

attr_reader :password
attr_accessor :password_confirmation

validates_confirmation_of :password
  # :message => "Passwords do not match"
validates_presence_of :email
  # :message => "No email entered"
validates_format_of :email, :as => :email_address
  # :message => "Email has an invalid format"
# validates_uniqueness_of :email, :message => "Email address already in use"

end
