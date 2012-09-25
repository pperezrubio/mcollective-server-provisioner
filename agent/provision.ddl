metadata :name => "Server Provisioning Agent",
	 :description => "Agent to assist in provisioning new servers",
	 :author => "R.I.Pienaar",
	 :license => "Apache 2.0",
	 :version => "1.1",
	 :url => "http://mcollective-plugins.googlecode.com/",
	 :timeout => 60

action "set_puppet_host", :description => "Update /etc/hosts with the master IP" do
        display :always

    input :ipaddress,
        :prompt      => "Master IP Address",
        :description => "IP Adress of the Puppet Master",
        :type        => :string,
        :validation  => '^\d+\.\d+\.\d+\.\d+$',
        :optional    => false,
        :maxlength   => 15

    input :hostname,
        :prompt      => "Hostname",
        :description => "Hostname of Puppet server",
        :type        => :string,
        :validation  => '^.+$',
        :optional    => true,
        :maxlength    => 256
end

action "request_certificate", :description => "Send the CSR to the master" do
	output :output,
	       :description => "Puppetd Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "Puppetd Exit Code",
	       :display_as  => "Exit Code"
end

action "get_certificate", :description => "Get the certificate from the master" do
	output :output,
	       :description => "Puppetd Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "Puppetd Exit Code",
	       :display_as  => "Exit Code"
end


action "bootstrap_puppet", :description => "Runs the Puppet bootstrap environment" do
	output :output,
	       :description => "Puppetd Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "Puppetd Exit Code",
	       :display_as  => "Exit Code"
end

action "run_puppet", :description => "Runs Puppet in the normal environment" do
	output :output,
	       :description => "Puppetd Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "Puppetd Exit Code",
	       :display_as  => "Exit Code"
end

action "cycle_puppet_run", :description => "Runs Puppet cycle" do
	output :output,
	       :description => "cycle_puppet_run Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "cycle_puppet_run Exit Code",
	       :display_as  => "Exit Code"
end

action "has_cert", :description => "Finds out if we already have a Puppet certificate" do
    output :has_cert,
           :description => "Have a puppet certificate already been created",
           :display_as => "Has Certificate"
end

action "provisioned", :description => "Finds out if we already are provisioned" do
    output :provisioned,
           :description => "Is the server provisioned",
           :display_as => "Is Provisioned"
end

action "lock_deploy", :description => "Lock the deploy so new ones can not be started" do
    output :lockfile,
           :description => "The file that got created",
           :display_as => "Lock file"
end

action "is_locked", :description => "Determine if the install is currently locked" do
    output :locked,
           :description => "Is the install locked",
           :display_as => "Locked"
end

action "unlock_deploy", :description => "Unlock the deploy" do
    output :unlocked,
           :description => "Has the file been unlocked",
           :display_as => "Unlocked"
end

action "clean_cert", :description => "Clean client cert" do
	output :output,
	       :description => "clean_cert Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "clean_cert Exit Code",
	       :display_as  => "Exit Code"
end

action "stop_puppet", :description => "Stop puppet" do
	output :output,
	       :description => "stop_puppet Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "stop_puppet Exit Code",
	       :display_as  => "Exit Code"
end

action "start_puppet", :description => "Start puppet" do
	output :output,
	       :description => "start_puppet Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "start_puppet Exit Code",
	       :display_as  => "Exit Code"
end

action "set_puppet_autostart", :description => "Start puppet" do
  	input :start,
          :prompt      => "Start value 'yes' or 'no'",
          :description => "Start",
          :type        => :string,
          :validation  => '.',
          :optional    => false,
          :maxlength   => 10

	output :output,
	       :description => "set_puppet_autostart Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "set_puppet_autostart exit Code",
	       :display_as  => "Exit Code"
end


action "fact_mod", :description => "Fact Mod" do
  	input :fact,
          :prompt      => "Fact",
          :description => "Fact Name",
          :type        => :string,
          :validation  => '.',
          :optional    => false,
          :maxlength   => 90

        input :value,
          :prompt      => "Value",
          :description => "Value Name",
          :type        => :string,
          :validation  => '.',
          :optional    => false,
          :maxlength   => 90

	output :output,
	       :description => "fact_mod Output",
	       :display_as  => "Output"

	output :exitcode,
	       :description => "fact_mod Exit Code",
	       :display_as  => "Exit Code"
end

