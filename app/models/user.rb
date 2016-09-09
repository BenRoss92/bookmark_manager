require 'bcrypt'

class User

include DataMapper::Resource

property :id, Serial
property :email, String, required: true
property :password, BCryptHash

attr_reader :password
attr_accessor :password_confirmation

validates_confirmation_of :password
validates_presence_of :email
validates_format_of :email, :as => :email_address
end
