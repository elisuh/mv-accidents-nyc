module ClearScreen

  def self.reset_screen
    clear_screen
    move_to_home
  end

  def self.clear_screen
    print "\e[2J"
  end

  def self.move_to_home
    print "\e[H"
  end

end
