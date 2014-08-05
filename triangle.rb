class Triangle
  
  NON = '三角形じゃないです＞＜'
  REGULAR = '正三角形ですね！'
  SCALENE = '不等辺三角ですね！'
  ISOSCELES = '二等辺三角形ですね！'
  
  def initialize(sides)
    @msg = ''
    if (not sides.is_a? Array) || (not sides.length == 3 && sides.all? {|s| s.kind_of?(Numeric) })
      @msg = NON
      return
    end
    side1, side2, side3 = sides[0], sides[1], sides[2]
    if side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      @msg = NON
    elsif side1 == side2 && side2 == side3 && side3 == side1
      @msg = REGULAR
    elsif side1 != side2 && side2 != side3 && side3 != side1
      @msg = SCALENE
    elsif side1 == side2 || side2 == side3 || side3 == side1
      @msg = ISOSCELES
    end
  end
  attr_accessor :msg
end

if caller.empty?
  p Triangle.new(if (not ARGV.nil?) && (ARGV[0].is_a? String) then ARGV[0].split(',').map{|a|a.to_i} else ARGV end).msg
end
