class EmailParser # Build a class EmailParser that accepts a string of unformatted
attr_accessor :emails# emails. The parse method on the class should separate them into
def initialize(emails)# unique email addresses. The delimiters to support are commas (',')
  @emails=emails# or whitespace (' ').
end
def parse
  emails.split.map do |email|
     email.split(",")
  end.flatten.uniq

end
end
