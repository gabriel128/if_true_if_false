require 'spec_helper'

describe IfTrueIfFalse do
  it 'has a version number' do
    expect(IfTrueIfFalse::VERSION).not_to be nil
  end

  it '' do
    expect(true.if_true { true }).to be true
  end

  it '' do
    expect(false.if_false { true }).to be true
  end

  it '' do
    expect(true.if_true{ true }.if_false{ false }).to be true
  end

  it '' do
    expect(false.if_true{ false }.if_false{ true }).to be true
  end
end
