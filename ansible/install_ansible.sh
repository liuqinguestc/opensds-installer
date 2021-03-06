#!/bin/bash

# Copyright 2018 The OpenSDS Authors.
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

# This step is needed to upgrade ansible to version 2.4.2 which is required for
# the ceph backend.
sudo apt-get remove -y ansible
sudo apt-get purge -y ansible

sudo add-apt-repository ppa:ansible/ansible-2.4

sudo apt-get update
sudo apt-get install -y ansible
sleep 3

sudo add-apt-repository -r ppa:ansible/ansible-2.4

ansible --version # Ansible version 2.4.2 is required for ceph; 2.0.2 or higher is needed for other backends.
