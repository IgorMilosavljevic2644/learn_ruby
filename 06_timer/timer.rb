class Timer
  #write your code here
  @seconds

  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	disp_seconds = @seconds % 60
  	disp_minutes = (@seconds / 60)
  	disp_hours = disp_minutes / 60

  	sprintf("%02d:%02d:%02d", disp_hours, disp_minutes%60, disp_seconds)
  end

end