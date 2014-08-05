require_relative '../triangle'

describe Triangle do
  context 'with argument 2,3,4' do
    subject { Triangle.new(2,3,4).msg }
    it { is_expected.to eq('不等辺三角ですね！') }
  end
  context 'with argument 2,2,1' do
    subject { Triangle.new(2,2,1).msg }
    it { is_expected.to eq('二等辺三角形ですね！') }
  end
  context 'with argument 1,1,1' do
    subject { Triangle.new(1,1,1).msg }
    it { is_expected.to eq('正三角形ですね！') }
  end
  context 'with argument 1,2,3' do
    subject { Triangle.new(1,2,3).msg }
    it { is_expected.to eq('三角形じゃないです＞＜') }
  end
  
end
