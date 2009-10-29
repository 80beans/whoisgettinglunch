xml.instruct!
xml.gettinglunch do 
  xml.winner @winner
  xml.contestants do
    @contestants.each do |contestant|
      xml.contestant contestant
    end
  end
end