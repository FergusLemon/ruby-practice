# You need to write a method that will take a person and
# generate their full name. A full name is just a first_name
# and a last_name separated by a space.
# 
# Sometimes, though, the code will raise a FirstNameError
# In these cases, just return their last name.
# 
# Other times, the code will raise a LastNameError
# In these cases, just return their first name.
# 
# And sometimes, it will raise other unexpected errors.
# In these cases, don't do anything, because we don't know
# why that error was raised.
class FirstNameError < Exception
end

class LastNameError < Exception
end
class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

def full_name(person)
  begin
    person.first_name + " " + person.last_name
  rescue FirstNameError
      person.last_name
  rescue LastNameError
    person.first_name
  end
end
