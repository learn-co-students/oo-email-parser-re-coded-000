# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  def parse
    stripped_arr =[]
    arr1 =[]
    arr2= []
    arr3 =[]
    reject_arr=[]
    final_arr =[]
    parser = EmailParser.new(emails)
      #"avi@test.com, arel@test.com test@avi.com, test@arel.com"
      arr1 = emails.split(",")
      stripped_arr = arr1.each do |item|
        stripped_arr << item.strip
      end
      reject_arr = stripped_arr.reject do |e|
        e.include?(" ")
      end
      reject_arr.each do |em|
        final_arr << em
      end
    arr2 = stripped_arr.select do |item|
        item.include?(" ")
      end
      arr3 = arr2.join.split(" ")
      arr3.each do |e|
      final_arr  << e
      end
      final_arr.uniq
  end
end
