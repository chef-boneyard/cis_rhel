#
# Cookbook:: cis_rhel
# Recipe:: default
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

include_recipe 'cis_rhel::aide'
include_recipe 'cis_rhel::core_dumps'
include_recipe 'cis_rhel::cron'
# include_recipe 'cis_rhel::firewalld'
include_recipe 'cis_rhel::login_banners'
include_recipe 'cis_rhel::network-packet-remediation'
include_recipe 'cis_rhel::partitions'
include_recipe 'cis_rhel::ssh'
