require 'crack'

# Uncomment for JSON file
path = ARGV[0].to_str
curr_hash = Crack::JSON.parse(File.read(path))

# Uncomment for XML file
# xml_path = ARGV[0].to_str
# curr_hash = Crack::XML.parse(File.read(xml_path))

$key_array = Array.new
$value_array = Array.new

# Not fully functional
def iterate(h)
  h.each do |k, v|
    $key_array << k # eq to .append
    if v.is_a?(Hash) || v.is_a?(Array)
      iterate(v)
    else
      $value_array << v # eq to .append
    end
  end
end

iterate(curr_hash)
puts ("Key array: #{$key_array}")
puts ("Value array: #{$value_array}")
