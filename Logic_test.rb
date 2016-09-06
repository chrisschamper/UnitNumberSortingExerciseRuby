require 'minitest/autorun'
require './Logic'
require './UnitNumber'

class TestLogic < Minitest::Test
  
  def test_SanityCheck
    assert_equal true, true
  end
  
  def test_SortByNumberNoSort
    data = "#1 - Hartnell\n" +
           "#2 - Troughton\n"
    l = Logic.new
    assert_equal data, l.Sort(data)
  end
  
  def test_SortByNumber1
    data = "#2 - Troughton\n" +
           "#1 - Hartnell\n"
    expectedResult = "#1 - Hartnell\n" +
                     "#2 - Troughton\n"
    l = Logic.new
    assert_equal expectedResult, l.Sort(data)
  end
  
  def test_SortByNumber2
    data = "#50 - Smith\n" +
           "#8 - Johnson\n"
    expectedResult = "#8 - Johnson\n" +
                     "#50 - Smith\n"
    l = Logic.new
    assert_equal expectedResult, l.Sort(data)
  end
  
  def test_SortByNumber2
    data = "#1B - Adams\n" +
           "#1A - Kessenich\n"
    expectedResult = "#1A - Kessenich\n" +
                     "#1B - Adams\n"
    l = Logic.new
    assert_equal expectedResult, l.Sort(data)
  end
  
end