
class TextReader
    def initialize(file_path)
        @file_path = file_path
    end
    
    def read_text
        begin
            File.open(@file_path, 'r') do |file|
                file.each_line do |line|
                    puts line
                end
            end
        rescue Errno::ENOENT
            puts "El archivo no existe."
        rescue => e
            puts "Ocurrió un error: #{e.message}"
        end
    end
end