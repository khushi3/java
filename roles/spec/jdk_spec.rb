require_relative 'spec_helper.rb'

describe file('/opt/jdk1.8.0_91') do
  it { should exist }
  it { should be_directory }
end

describe command('/opt/jdk1.8.0_91/bin/java -version') do
  its(:stderr) { should match /java version "1.8.0_91"/ }
  its(:exit_status) { should eq 0 }
end
