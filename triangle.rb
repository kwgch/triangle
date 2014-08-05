class Triangle
  def initialize(side1,side2,side3)
    side1, side2, side3 = side1.to_i, side2.to_i, side3.to_i
    @msg = ''
    if side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      @msg = '三角形じゃないです＞＜'
    elsif side1 == side2 && side2 == side3 && side3 == side1
      @msg = '正三角形ですね！'
    elsif side1 != side2 && side2 != side3 && side3 != side1
      @msg = '不等辺三角ですね！'
    elsif side1 == side2 || side2 == side3 || side3 == side1
      @msg = '二等辺三角形ですね！'
    end
  end
  attr_accessor :msg
end

if caller.empty?
  args = ARGV[0].split(',')
  p Triangle.new(args[0],args[1],args[2]).msg
end
