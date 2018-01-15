require 'spec_helper'

RSpec.describe SVMKit::Base::Transformer do
  let(:dummy_class) do
    class Dummy
      include SVMKit::Base::Transformer
    end
    Dummy.new
  end

  it 'raises NotImplementedError when the fit method is not implemented.' do
    expect{ dummy_class.fit }.to raise_error(NotImplementedError)
  end

  it 'raises NotImplementedError when the fit_transform method is not implemented.' do
    expect{ dummy_class.fit_transform }.to raise_error(NotImplementedError)
  end
end
