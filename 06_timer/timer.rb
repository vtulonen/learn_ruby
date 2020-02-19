class Timer


  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string

    hours = @seconds / 3600           #Secs to hours
    minutes = @seconds % 3600 / 60      #Minutes from hours reminder
    secs = @seconds % 3600 % 60           #Seconds from minutes reminder

        # sprintf syntax 02 pads number with 2 zeros
    return "%02i" % hours + ":" "%02i" % minutes + ":" "%02i" % secs
  end

end
