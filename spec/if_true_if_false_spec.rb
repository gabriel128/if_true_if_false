require 'spec_helper'

describe 'IfTrueIfFalse' do
  it 'has a version number' do
    expect(IfTrueIfFalse::VERSION).not_to be nil
  end

  describe '#if_true' do
    context 'when boolean' do
      it 'returns ok whitout annidation' do
        expect(true.if_true { 'ok' }).to eq 'ok'
      end

      it 'returns ok with annidation' do
        expect(true.if_true { 'ok' }.if_false { fail }).to eq 'ok'
      end
    end

    context 'when Object' do
      it 'returns ok whitout annidation' do
        expect(Object.new.if_true { 'ok' }).to eq 'ok'
      end

      it 'returns ok with annidation' do
        expect(Object.new.if_true { 'ok' }.if_false { fail }).to eq 'ok'
      end
    end

    context 'when nil' do
      it 'returns nil whitout annidation' do
        expect(nil.if_true { fail }).to eq nil
      end

      it 'fails on true and return false closure with annidation' do
        expect(nil.if_true { fail }.if_false { 'ok' }).to eq 'ok'
      end
    end
  end

  describe '#if_false' do
    context 'when boolean' do
      it 'returns ok without annidation' do
        expect(false.if_false { 'ok' }).to eq 'ok'
      end

      it 'returns ok with annidation' do
        expect(false.if_true{ fail }.if_false{ 'ok' }).to eq 'ok'
      end
    end
    context 'when Object' do
      it 'returns ok whitout annidation' do
        obj = Object.new
        expect(obj.if_false { fail }).to be obj
      end
    end

    context 'when nil' do
      it 'returns ok whitout annidation' do
        expect(nil.if_false { 'ok' }).to eq 'ok'
      end
    end
  end
end
