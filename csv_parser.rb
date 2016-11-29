require 'csv'

path = ARGV[0].to_str
row_num = ARGV[1].to_i

def take_csv_row(row_num, path)
    CSV.foreach(path) do |row|
        puts(row[row_num])
    end
end

take_csv_row(row_num, path)
