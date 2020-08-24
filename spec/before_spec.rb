require 'docking_station'

describe "before" do
  let(:bike) { double('a bike', working?: true) }
  subject(:docking_station) { DockingStation.new }

  before do
     p('use me to call methods needed for common setup')
     docking_station.dock(bike)
  end

  it 'returns working bikes' do
    expect(docking_station.working_bikes).to eq [bike]
  end

  it 'returns working bikes..again' do
    expect(docking_station.working_bikes).to eq [bike]
  end
end

# Further inquiry: https://relishapp.com/rspec/rspec-core/v/3-9/docs/hooks/before-and-after-hooks
