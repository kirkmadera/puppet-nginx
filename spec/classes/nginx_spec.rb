require 'spec_helper'
describe 'nginx' do

  it { should compile }

  context 'with default values for all parameters' do
    it { should contain_class('nginx::repo') }
    it { should contain_class('nginx::install') }
    it { should contain_class('nginx::config') }
    it { should contain_class('nginx::service') }
    it { should contain_class('nginx::firewall') }
  end
end