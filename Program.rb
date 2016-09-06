require './Logic'
require './UnitNumber'

data = File.read(ARGV[0])
l = Logic.new
puts l.Sort(data)
