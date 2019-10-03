# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
  attr_accessor  :csv_emails
  
  def initialize(csv_emails)
    @csv_emails = csv_emails
  end 
	
	def parse
		@csv_emails = @csv_emails.gsub(/[\s,]/ ," ").split
		# @csv_emails is a instance variable,The gsub string method is a substitution method,It finds all instances of the matched string and replaces it with the new argument. /[\s] rmoves white space. #.uniq Returns a new array by removing duplicate values in self.
		@csv_emails.flatten.uniq
	end
	
end

