require 'spec_helper'
RSpec.describe 'test' do
  describe '#draw' do
    let(:draw) { MegaLoto20170929::Drawing.new.draw }
    it 'returns an array' do
      expect(draw).to be_a(Array)
    end
    it 'returns an array with 6 elements' do
      expect(draw.size).to eq(6)
    end
    it 'each element is an integer' do
      draw.each do |drawing|
        expect(drawing).to be_a(Integer)
      end
    end
    it 'each element is less than 60' do
      draw.each do |drawing|
        expect(drawing).to be < 60
      end
    end
  end
end
