describe service('sshd') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe port(22) do
  it { should be_listening }
end

describe command('pgrep docker') do
   its('exit_status') { should eq 0 }
end

describe file('/etc/systemd/system/docker.service') do
  it { should exist }
  it { should_not be_directory }
end

describe file('/docker/docker') do
 its('type') { should eq :directory }
 it { should be_directory }
end

describe command('docker') do
  its('exit_status') { should eq 0 }
end

describe command('aws --version') do
  its('exit_status') { should eq 0 }
end
