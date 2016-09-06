class Logic
  def Sort(input)
    list = input.split("\n")
    units = []
    list.each do |r|
      units << UnitNumber.new(r)
    end
    
    
    result = ""
    units.sort_by{|s| [s.RoomNumber, s.Letter]}.each do |r|
      result = result + r.ToString + "\n"
    end
    
    return result
  end
end