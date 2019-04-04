require 'date'

class Countdown

  def initialize(name,day, month)
    @day = day
    @month = month
    @name = name
  end

  def  days_until_birthday

    if @month < Date.today.month
      next_bday = "#{@day}-#{@month}-#{Date.today.year + 1}"
    else
      next_bday = "#{@day}-#{@month}-#{Date.today.year}"
    end
    (Date.parse(next_bday) - Date.today).to_i
  end

  attr_reader :day, :month, :name
end
