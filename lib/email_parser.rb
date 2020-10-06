# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :addresses

  def initialize(addresses)
    @addresses = addresses.split(/[ ,]/)
  end

  def parse
    parsed_addresses = []
    @addresses.each do |email|
      if email != "" && !parsed_addresses.include?(email)
        parsed_addresses << email
      end
    end
    parsed_addresses
  end

end