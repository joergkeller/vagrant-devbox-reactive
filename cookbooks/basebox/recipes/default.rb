execute "apt-get-update-periodic" do
  command "apt-get update"
  ignore_failure true
  only_if do
    File.exists?('/var/lib/apt/periodic/update-success-stamp') &&
    File.mtime('/var/lib/apt/periodic/update-success-stamp') < Time.now - 86400
  end
end

package "git"
package "console-data"
# execute "load swiss-german keyboard" do
  # command "loadkeys sg-latin1"
  # ignore_failure true
# end

user "developer" do
  supports :manage_home => true
  comment "Developer"
  home "/home/developer"
  shell "/bin/bash"
  password "$1$az0s/KvY$fQpdVQ/6kcBsQVRwule6//"
end


include_recipe "sudo"
