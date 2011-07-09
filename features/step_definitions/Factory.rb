require 'rubygems'
require 'factory_girl'

class User
	attr_accessor :nome, :endereco 
end

Given /^I have defined a factory called "([^"]*)"$/ do |factory_name|
  Factory.define factory_name.to_sym do |u|
	u.nome "Leandro"
	u.endereco "R do ouvidor, 111"
  end
end

When /^I ask to build a factory "([^"]*)"$/ do |factory_name|
  @usuario = Factory.build factory_name.to_sym
end

Then /^I should have an object representing this factory$/ do
	@usuario.should_not be_nil
end

