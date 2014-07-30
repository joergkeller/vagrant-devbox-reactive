package "ubuntu-desktop" do
  options "-d --no-install-recommends"
end

package "ubuntu-desktop" do
  options "--no-install-recommends"
end

package "unity-control-center"
package "unity-lens-applications"
package "indicator-session"

package "firefox"
package "chromium-browser"

#execute "load swiss-german keyboard" do
#  command "setxkbmap 'ch(de)'"
#  ignore_failure true
#end

execute "install eclipse package" do
  command "wget -O /tmp/eclipse-luna.tar.gz \"http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz&r=1\"; cd /usr/local; tar xzf /tmp/eclipse-luna.tar.gz; mv eclipse eclipse-luna; ln -s eclipse-luna eclipse; ln -s /usr/local/eclipse-luna/eclipse /usr/bin/eclipse"
end

