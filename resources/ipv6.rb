#
# Cookbook:: cis_rhel
# Resource:: ipv6
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
#

action :harden do
  # Ensure IPv6 is enabled
  sysctl_param 'net.ipv6.conf.all.disable_ipv6' do
    value 0
  end
  # End IPv6 is enabled
  # Ensure IPv6 router advertisements are not accepted
  sysctl_param 'net.ipv6.conf.default.accept_ra' do
    value 0
  end
  sysctl_param 'net.ipv6.conf.all.accept_ra' do
    value 0
  end
  # End IPv6 router advertisements are not accepted
  # Ensure IPv6 redirects are not accepted
  sysctl_param 'net.ipv6.conf.all.accept_redirects' do
    value 0
  end
  sysctl_param 'net.ipv6.conf.default.accept_redirects' do
    value 0
  end
  # End IPv6 redirects are not accepted
end

action :disable do
  # Ensure IPv6 is disabled
  sysctl_param 'net.ipv6.conf.all.disable_ipv6' do
    value 1
  end
  # End of Ensure IPv6 is disabled
end