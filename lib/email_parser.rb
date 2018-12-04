class EmailParser
  attr_reader :emails_str, :emails_arr

  def initialize(emails)
    @emails_str = emails
  end

  def parse
    @emails_arr ||= @emails_str.split(/[,\s]/).reject(&:empty?).uniq
  end
end
