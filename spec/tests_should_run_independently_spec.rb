# Remember:
# all tests should run independently from each other
# RSpec has helper methods like #subject, #let, #let!, #before
# these helper methods take blocks of code, runs them for each example, and memoizes the value
# You can achieve the same effect by creating all setup for each test
# But, RSpec helps you DRY your test code with these methods.
# The example below shows the difference between using an RSpec helper method #subject
# and a local variable when trying to DRY out tests.
# If it's not clear: sharing state between tests is BAD. DON'T DO IT.

require 'docking_station'

describe DockingStation do
  let(:working_bike) { double('a bike', working?: true) }
  let(:broken_bike) { double('a bike', working?: false) }
  docking_station = DockingStation.new # BAD. A local variable will cause tests to share state.

  it 'can select working bikes' do
    p "docking_station: #{docking_station.object_id}"
    docking_station.dock(working_bike)
    docking_station.dock(broken_bike)
    p docking_station

    expect(docking_station.working_bikes).to eq [working_bike]
  end

  it 'can select working bikes..again' do
    p "docking_station: #{docking_station.object_id}"
    docking_station.dock(working_bike)
    docking_station.dock(broken_bike)
    p docking_station

    expect(docking_station.working_bikes).to eq [working_bike]
  end
end

describe DockingStation do
  let(:working_bike) { double('a bike', working?: true ) }
  let(:broken_bike) { double('a bike', working?: false ) }
  subject(:docking_station) { described_class.new }

  it 'can select working bikes' do
    p "docking_station: #{docking_station.object_id}"
    docking_station.dock(working_bike)
    docking_station.dock(broken_bike)
    p docking_station

    expect(docking_station.working_bikes).to eq [working_bike]
  end

  it 'can select working bikes..again' do
    p "docking_station: #{docking_station.object_id}"
    docking_station.dock(working_bike)
    docking_station.dock(broken_bike)
    p docking_station

    expect(docking_station.working_bikes).to eq [working_bike]
  end
end
