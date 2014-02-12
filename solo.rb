# solo.rb, Settings are explained in http://docs.opscode.com/config_rb_solo.html
#
root = File.expand_path(File.dirname(__FILE__)) + '/chef'
#cookbook_path [root + '/cookbooks', root + '/site-cookbooks']	#when using librarian
cookbook_path [ root + '/site-cookbooks' ]

file_cache_path "/tmp/chef-solo"			# Default value: /var/chef/cache
file_backup_path "/tmp/chef-solo/backup"	# Default value: /var/chef/backup

