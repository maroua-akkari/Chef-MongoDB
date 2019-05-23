

require 'spec_helper'

describe 'mongo::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end


    it 'should install sc-mongodb from a recipe' do
      expect(chef_run).to include_recipe("sc-mongodb")
    end

    it "should enable sc-mongodb" do
      expect(chef_run).to enable_service "sc-mongodb"
    end

    it "should start sc-mongodb" do
      expect(chef_run).to start_service "sc-mongodb"      
    end

  end
end
