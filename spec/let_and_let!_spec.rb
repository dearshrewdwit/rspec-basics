# Can you predict what gets printed to your terminal during the test run?

describe "Let and let!" do
  p '1. describe block'
  let(:lazy) { p('lazy') }
  let!(:now) { p('now') }

  it 'both are called in example' do
    p '2. first example'
    lazy
    now
  end

  it 'only lazy is called in example' do
    p '3. second example'
    lazy
  end

  it 'none are called in example' do
    p '4. third example'
  end
end

# further inquiry: https://relishapp.com/rspec/rspec-core/v/3-9/docs/helper-methods/let-and-let
