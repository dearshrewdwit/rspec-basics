require 'animal'

describe Animal do
  # Spend 5 mins: note down what #subject and #described_class return when you call the methods
  subject(:animal) { described_class.new }

  it 'can roar' do
    expect(animal.roar).to eq 'ROAR!'
  end
  it 'can snore' do
    expect(animal.sleep).to eq 'snore'
  end
end


describe 'using a string description' do
  # what happens now?
  subject(:animal) { described_class.new }

  it 'can roar' do
    expect(animal.roar).to eq 'ROAR!'
  end
  it 'can snore' do
    expect(animal.sleep).to eq 'snore'
  end
end

describe 'using subject' do
  it 'can roar' do
    # use p() to investigate what the return value of #subject is
    expect(subject.roar).to eq 'ROAR!'
  end
end
