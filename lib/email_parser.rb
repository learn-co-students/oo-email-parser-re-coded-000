class EmailParser
  attr_accessor :emails
  @@all=[]
  def initialize(emails)
    @emails=emails

  end
  def parse
    parsed=emails.split(/[\s,,]+/)
    parsed.uniq!
    return parsed
  end
end
