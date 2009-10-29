class Lunch

  def self.get_random(contestants)
    contestants[rand(contestants.length)]
  end

end