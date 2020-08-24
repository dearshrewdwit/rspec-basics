describe 'Mocking' do
  it 'is familiar' do
    mock = double('a mock')
    allow(mock).to receive(:sleep) { 'zzzz' }
    allow(mock).to receive(:eat) { 'yum' }
    expect(mock.sleep).to eq 'zzzz'
    expect(mock.eat).to eq 'yum'
  end

  it 'but can be shortened' do
    # Spend 5 mins: play around creating RSpec doubles using both approaches. When would you use either approach?
    # #double can take key-value pairs as method stubs
    # the first argument is an optional identifier
    mock = double('a mock', sleep: 'zzzz', eat: 'yum')
    expect(mock.sleep).to eq 'zzzz'
    expect(mock.eat).to eq 'yum'
  end
end
