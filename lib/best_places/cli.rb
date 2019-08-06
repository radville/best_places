class BestPlaces::CLI

    def call
        "Best Places in the U.S."
        #BestPlaces::Scraper.new.get_places - still need to make this
        main_menu
    end

    def list_places
        puts "Here are the top five places to live in the U.S.:"
        puts "Index Rank    City                 Overall Score"
        BestPlaces::Place.all[0..5].each_with_index(1) do |place, i|
            puts "#{i}.    ##{place.rank}      #{place.name}          #{place.score}"
            puts "2.    #2      Denver, CO           7.4"
            puts "3.    #3      Colorado Springs, CO 7.4"
            puts "4. etc etc"
            puts "5. etc etc"
        places_menu
    end

    def main_menu
        puts "Type 'list' to see the top five cities, or type exit.\n"
        input = nil
        until input == "exit" || input == "list"
            input = gets.strip
            case input
            when "list"
                list_places
                # input = "exit"
            when "exit"
            else
                puts "Invalid command. Please enter the index number of a city or type exit."
            end   
        end
    end

    def places_menu
        puts "\nOptions:
        * Type the index number of the city you'd like more information on
        * Type 'list' to see the cities again
        * Type 'exit' to quit"
        input = nil
        until input == "exit"
            input = gets.strip
            case input
            when "1"
                puts "more info on city 1"
                menu
            when "2"
                puts "more info on city 2"
                menu
            when "3"
                puts "more info on city 3"
                menu
            when "4"
                puts "more info on city 4"
                menu
            when "5"
                puts "more info on city 5" 
                menu     
            when "list"
                list_places
            when "exit"
            else
                puts "Invalid command. Please enter the index number of a city or type exit."
            end
        end   
    end

end