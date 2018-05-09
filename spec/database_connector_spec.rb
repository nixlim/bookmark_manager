require 'database_connector'

describe DatabaseConnector do

  it 'responds to #connect method' do
    expect(described_class).to respond_to(:connect)
  end
  it 'should connect to the database' do
    expect(described_class.connect).to_not be_nil

  end
end