#
# Cookbook:: cis_rhel
# Resources:: user_mgmt
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This resource should probably exist in the users community cookbook.
action :harden do
  ['/etc/default/useradd', '/etc/passwd','/etc/passwd-', '/etc/pam.d/su', '/etc/bashrc', '/etc/group', '/etc/group-'].each do |systemfile|
    file systemfile do
      mode 0644
      owner 'root'
      group 'root'
    end
  end
  ['/etc/gshadow-', '/etc/shadow', '/etc/gshadow', '/etc/shadow-'].each do |systemfile|
    file systemfile do
      mode 0000
      owner 'root'
      group 'root'
    end
  end
end