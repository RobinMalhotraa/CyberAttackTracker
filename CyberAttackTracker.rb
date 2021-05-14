
dir = File.dirname(__FILE__)
require dir + "/lib/pb_proced_lib.rb" # Common procedures and functions.

version = "1.8"
Signal.trap("INT") do
	puts ""
	puts "[*] EXITING ..."
	puts ""
	pb_write_log("exiting", "Core")
	exit
end
#####

pb_write_log("CyberAttackTracker loaded", "Core")

srand(Time.now.to_i)
banner = rand(4)

puts ""
title " CyberAttackTracker #{version} "


sleep(0.25)
option1 = ""

while option1 != "5"
	module_exec = true
	puts ""
	puts "--------- Menu" + " "*10 + "ruby#{RUBY_VERSION} @ #{RUBY_PLATFORM}"
	
	puts "2- CyberAttackTracker"
	puts "8- Exit"
	puts ""
	print "   -> "
	option1 = gets_pb.chomp
	puts ""

	case option1
		when "1"
			
			print "   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				when "1"
					require "#{dir}/tools/cryptography/base64.rb"
					Cryptogr_pb::Base64_pb.new()
				when "2"
					require "#{dir}/tools/cryptography/digest.rb"
					Cryptogr_pb::Digest_pb.new()
				when "3"
					require "#{dir}/tools/cryptography/hash_cracker.rb"
					Cryptogr_pb::Hash_cracker_pb.new()
				when "4"
					require "#{dir}/tools/cryptography/sec_password.rb"
					Cryptogr_pb::Sec_password_pb.new()
				else
					module_exec = false
					puts ""
					puts "Invalid option."
					puts ""
			end
		when "2"
			puts ""
			puts ""
			puts "3- Honeypot"
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			print "   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				when "1"
					if haspermission() == true
						require "#{dir}/tools/network/net_dos.rb"
						Network_pb::Net_dos_pb.new()
					else
						module_exec = false
						puts ""
						puts "Sorry, you haven't permissions to run this module (root?)."
						puts ""
					end
				when "2"
					require "#{dir}/tools/network/port_scanner.rb"
					Network_pb::Port_scanner_pb.new()
				when "3"
					require "#{dir}/tools/network/honeypot.rb"
					Network_pb::Honeypot_pb.new()
				when "4"
					require "#{dir}/tools/network/fuzzer.rb"
					Network_pb::Fuzzer_pb.new()
				when "5"
					require "#{dir}/tools/network/dns_search.rb"
					Network_pb::DNS_search_pb.new()
				when "6"
					require "#{dir}/tools/network/samy_mac_loc.rb"
					Network_pb::Samy_mac_loc_pb.new()
				else
					module_exec = false
					puts ""
					puts "Invalid option."
					puts ""
			end
		when "3"
			puts ""
			puts ""
			puts ""
			puts "0- Back"
			puts ""
			print "   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				when "1"
					require "#{dir}/tools/web/http_brute_dir.rb"
					Web_pb::HTTP_brute_dir_pb.new()
				when "2"
					require "#{dir}/tools/web/http_brute_files.rb"
					Web_pb::HTTP_brute_files_pb.new()
				else
					module_exec = false
					puts ""
					puts "Invalid option."
					puts ""
			end
		when "4"
module_exec = false
puts "


"
		when "5"
			module_exec = false
			Process.kill("SIGINT", Process.pid()) # Just exit.
		else
			module_exec = false
			puts ""
			puts "Invalid option."
			puts ""
	end
	if module_exec == true
		puts ""
		puts ""
		puts ""
	end
end

