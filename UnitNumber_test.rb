require 'minitest/autorun'
require './UnitNumber'

class TestUnitNumber < Minitest::Test
  
  #Make sure we are checking assertions
  
  def test_SanityCheck
    assert_equal true, true
  end
  
  #Let's check the constructor
  
  def test_UnitNumberStringContstructor
    data = "#50 - Smith";
    unit = UnitNumber.new(data)
  end
  
  #Let's make sure we can RegEx our room number
  
  def test_UnitNumberInt1
    data = "#50 - Smith";
    unit = UnitNumber.new(data)
    assert_equal 50, unit.RoomNumber
  end
  
  def test_UnitNumberInt2
    data = "#8 - Johnson";
    unit = UnitNumber.new(data)
    assert_equal 8, unit.RoomNumber
  end
  
  def test_UnitNumberInt3
    data = "#100 - Sanders";
    unit = UnitNumber.new(data)
    assert_equal 100, unit.RoomNumber
  end
  
  def test_UnitNumberInt4
    data = "#1B - Adams";
    unit = UnitNumber.new(data)
    assert_equal 1, unit.RoomNumber
  end
  
  def test_UnitNumberInt5
    data = "#1A - Kessenich";
    unit = UnitNumber.new(data)
    assert_equal 1, unit.RoomNumber
  end
  
  def test_UnitNumberInt6
    data = "#1A - Johnny 5";
    unit = UnitNumber.new(data)
    assert_equal 1, unit.RoomNumber
  end
  
  def test_UnitNumberInt7
    data = "#1A - Henry the 8th";
    unit = UnitNumber.new(data)
    assert_equal 1, unit.RoomNumber
  end
  
  def test_UnitNumberInt8
    data = "#1 - Johnny 5";
    unit = UnitNumber.new(data)
    assert_equal 1, unit.RoomNumber
  end
  
  def test_UnitNumberInt9
    data = "#1 - Henry the 8th";
    unit = UnitNumber.new(data)
    assert_equal 1, unit.RoomNumber
  end
  
  #end Room RegEx testing
  
  #Let's make sure we can RegEx our Room Letter if present
  
  def test_UnitNumberLetter1
    data = "#50 - Smith";
    unit = UnitNumber.new(data)
    assert_equal nil, unit.Letter
  end
  
  def test_UnitNumberLetter2
    data = "#8 - Johnson";
    unit = UnitNumber.new(data)
    assert_equal nil, unit.Letter
  end
  
  def test_UnitNumberLetter3
    data = "#100 - Sanders";
    unit = UnitNumber.new(data)
    assert_equal nil, unit.Letter
  end
  
  def test_UnitNumberLetter4
    data = "#1B - Adams";
    unit = UnitNumber.new(data)
    assert_equal "B", unit.Letter
  end
  
  def test_UnitNumberLetter5
    data = "#1A - Kessenich";
    unit = UnitNumber.new(data)
    assert_equal "A", unit.Letter
  end
  
end