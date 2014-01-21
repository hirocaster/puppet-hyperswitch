require 'spec_helper'

describe 'hyperswitch' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_package('hyperswitch').with({
      :provider => 'compressed_app',
      :source   => 'http://bahoom.com/hyperswitch/HyperSwitch.zip',
    })
  end
end
