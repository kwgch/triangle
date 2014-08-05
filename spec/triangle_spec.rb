require_relative '../triangle'

describe Triangle do
    
  [
    {args: [2,3,4], type: Triangle::SCALENE},
    {args: [3,4,5], type: Triangle::SCALENE},
    {args: [2,2,1], type: Triangle::ISOSCELES},
    {args: [3,3,2], type: Triangle::ISOSCELES},
    {args: [1,1,1], type: Triangle::REGULAR},
    {args: [10,10,10], type: Triangle::REGULAR},
    {args: [0.1,0.1,0.1], type: Triangle::REGULAR},
    {args: [1,2,3], type: Triangle::NON},
    {args: [2,1,1], type: Triangle::NON},
    {args: [1,1], type: Triangle::NON},
    {args: [1], type: Triangle::NON},
    {args: [0,0,0], type: Triangle::NON},
    {args: [0,0], type: Triangle::NON},
    {args: [0], type: Triangle::NON},
    {args: [], type: Triangle::NON},
    {args: [[],[],[]], type: Triangle::NON},
    {args: [[],[]], type: Triangle::NON},
    {args: [[]], type: Triangle::NON},
    {args: [false,false,false], type: Triangle::NON},
    {args: [false,false], type: Triangle::NON},
    {args: [false], type: Triangle::NON},
    {args: ["a","b","c"], type: Triangle::NON},
    {args: ["a","b"], type: Triangle::NON},
    {args: ["a"], type: Triangle::NON},
    {args: [:a,:b,:c], type: Triangle::NON},
    {args: [:a,:b], type: Triangle::NON},
    {args: [:a], type: Triangle::NON},
    {args: nil, type: Triangle::NON},
    ].each do |h|
      args = h[:args]
      context 'with argument ' + if args.is_a? Array then args.join(',') else args.to_s end do
        subject { Triangle.new(args).msg }
        it { is_expected.to eq(h[:type]) }
      end
    end
end