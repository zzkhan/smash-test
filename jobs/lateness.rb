require 'oci8'

begin
  oracle_connection = OCI8.new('ipmule3','ipmule3','ut007008.bkyb.com:1525')
  oracle_connection.exec("select OFFERDATE from OTTVIEW WHERE WORKFLOWSTATUSID =0 AND ROWNUM < 10") do |r|
    puts r.join(',')
  end

rescue OCIError
  # display the error message
  puts "OCIError occured!"
  # puts "Code: " + $!.code.to_s
  # puts "Desc: " + $!.message
end
