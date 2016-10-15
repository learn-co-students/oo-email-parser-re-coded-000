# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :text
  @@all = []
  @@email_str = String.new
  @@emails=[]
  def initialize(email_str)
    @@email_str=email_str
    @@all.push(self)
  end
  def self.emails
    return @@emails
  end
    def parse
      temp_arr=@@email_str.split(/,|\s/)

    temp_copy=temp_arr
    temp_arr.each do |e|
    if e.length <3
      temp_arr.delete(e)
    end
   end
   @@emails=temp_arr
   return @@emails.uniq
  end
end
e=EmailParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
 puts e.parse().inspect
