

def string_converter
    provided = "(id,name,email,type(id,name,customFields(c1,c2,c3)),externalID)"


    # convert to the following 

    # perform transformation
    array_portion = provided.tr("()", " ").split(" ")

    #This creates separation we need to deliniate fields
    ["id, name, email, type", "id,name customFields", "c1,c2,c3", "externalid"]
   

    # First Output
    puts "Output 1 \n"
    array_portion[0].split(",").each do |keyword|
        puts "- #{keyword}"
    end
    array_portion[1].split(",").each do |keyword|
        puts "  - #{keyword}"
    end

    array_portion[2].split(",").each do |keyword|
        puts "     - #{keyword}"
    end
    puts "  - #{array_portion[3].split(",")[1]}"

    puts "\n"
    puts "Second Output"

    # Second Output
    puts "-  #{array_portion[0].split(",")[2]}"
    puts "-  #{array_portion[3].split(",")[1]}"
    puts "-  #{array_portion[0].split(",")[0]}"
    puts "-  #{array_portion[0].split(",")[1]}"
    puts "-  #{array_portion[0].split(",")[3]}"
    puts "  - #{array_portion[1].split(",")[1]}"
    
    array_portion[2].split(",").each do |keyword|
        puts "   - #{keyword}"
    end
    puts "  - #{array_portion[1].split(",")[0]}"
    puts "  - #{array_portion[1].split(",")[1]}"
    
    
end


if __FILE__ == $0
    string_converter
end