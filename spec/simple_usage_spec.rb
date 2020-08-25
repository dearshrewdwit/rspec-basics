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

# -----------------------------------------------

# Further exploration

# -----------------------------------------------

describe 'using a string description' do
  # what happens now when this test runs? Why?
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
    # when should you use an explicit subject and when should you alias it?
    expect(subject.roar).to eq 'ROAR!'
  end
end
