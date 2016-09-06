class UnitNumber
  def RoomNumber
    #match on numbers
    #followed by possible letters
    #then white space using positive lookahead
    /\d+(?=.*\s)/.match(@initialString)[0].to_i
  end
  def Letter
    #match on a positive lookahead number
    #follwed by letters
    #followed by a word break
    #followed by positive lookahead white space
    m = /(?<=\d)[A-Za-z]+\b(?=\s)/.match(@initialString)
    if m != nil
      return m[0]
    else
      return nil
    end    
  end
  
  def ToString
    @initialString
  end
  
  def initialize(input)
    @initialString = input
  end
  
end