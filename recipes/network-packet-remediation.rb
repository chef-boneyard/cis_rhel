#
# Cookbook:: cis_rhel
# Recipe:: network-packet-remediation
#
# Copyright:: 2018, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe 'sysctl'

# Addresses Log Suspicious Packets
sysctl_param 'net.ipv4.conf.all.log_martians' do
  value 1
end
sysctl_param 'net.ipv4.conf.default.log_martians' do
  value 1
end
# End Log Suspicious Packets
# Addresses Send Packet Redirects
sysctl_param 'net.ipv4.conf.all.send_redirects' do
  value 0
end
sysctl_param 'net.ipv4.conf.default.send_redirects' do
  value 0
end
# End Send Packet Redirects
# Addresses ICMP Redirect Acceptance
sysctl_param 'net.ipv4.conf.all.accept_redirects' do
  value 0
end
sysctl_param 'net.ipv4.conf.default.accept_redirects' do
  value 0
end
sysctl_param 'net.ipv4.conf.all.secure_redirects' do
  value 0
end
sysctl_param 'net.ipv4.conf.default.secure_redirects' do
  value 0
end
# End ICMP Redirect Acceptance
cis_rhel_ipv6 'harden ipv6' do
  action 'harden'
end
