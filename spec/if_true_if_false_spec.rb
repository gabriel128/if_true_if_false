require 'spec_helper'

describe 'IfTrueIfFalse' do
  it 'has a version number' do
    expect(IfTrueIfFalse::VERSION).not_to be nil
  end

  describe '#if_true' do
    it 'returns ok whitout annidation' do
      expect(true.if_true { 'ok' }).to eq 'ok'
    end

    it 'returns ok with annidation' do
      expect(true.if_true { 'ok' }.if_false { fail }).to eq 'ok'
    end

    it 'returns ok with annidation inverted' do
      expect(true.if_false { fail }.if_true { 'ok' }).to eq 'ok'
    end
  end

  describe '#if_false' do
    it 'returns ok without annidation' do
      expect(false.if_false { 'ok' }).to eq 'ok'
    end

    it 'returns ok with annidation' do
      expect(false.if_true{ fail }.if_false{ 'ok' }).to eq 'ok'
    end

    xit 'returns ok with annidation inverted' do
      expect(false.if_false{ 'ok' }.if_true{ fail }).to eq 'ok'
    end
  end
end
