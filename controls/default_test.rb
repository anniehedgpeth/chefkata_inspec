describe package('nano') do
  it { should be_installed }
end

describe directory('/var/website') do
  it { should exist }
end

describe directory('/var/old-website') do
  it { should_not exist }
end

describe file('/var/website/directions.txt') do
  it { should exist }
  its('content') { should eq 'website goes here' }
end

describe file('/var/website/builder.txt') do
  it { should exist }
  its('content') { should match 'Annie built this' }
end

describe file('/var/website/logo.jpg') do
  it { should exist }
end

describe file('/var/website/command.txt') do
  it { should exist }
  its('content') { should match 'ran command' }
end

describe directory('/var/website/arch') do
  it { should exist }
end

describe file('/var/website/welcome.txt') do
  it { should exist }
  its('content') { should eq 'Welcome to Chef Learning!' }
end

describe file('/var/website/here.txt') do
  it { should exist }
  its('content') { should match 'Here for dev but not prod' }
end
