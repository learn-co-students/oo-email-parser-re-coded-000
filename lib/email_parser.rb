class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end
end
emails = "john@doe.com, person@somewhere.org"
parser = EmailParser.new(emails)

parser.parse
