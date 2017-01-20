class EmailParser
attr_accessor :emails
def initialize(emails)
 @emails=emails
end
def parse
 list=emails.split(/,\s|\s/)
 list.uniq!
list
end
end
