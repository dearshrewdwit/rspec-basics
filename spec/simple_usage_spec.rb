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
