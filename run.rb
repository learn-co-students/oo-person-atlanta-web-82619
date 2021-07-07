require 'pry'
require_relative './lib/person'

danny = Person.new("Danny")
pete = Person.new("Pete")

danny.call_friend(pete)


binding.pry
