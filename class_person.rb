# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate


class Person
  require("date") # We need to pull in the Date class, which is not loaded by default

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end

  def full_name
    full_name = first_name + " " + last_name
    return full_name
  end

end

# Test your instance methods by adding to the end of this file:

#  new_person = Person.new
#  new_person.first_name = "Joe"
#  new_person.last_name = "Mama"
#  new_person.full_name 
# Output:
#=>  "Joe Mama"

#  other_person = Person.new
#  other_person.birthdate = "April 19, 1987"
#  other_person.age
# Output:
#=>  45
