require 'pry'

# Write your code here.

#batch_maker method 
   #receives a name and creates a return message
   #return message is "Hello, my name is X"

def badge_maker(speaker)
    "Hello, my name is #{speaker}."
end

#batch_badge_creator method 
   #takes an array of names 
   # returns an array of speakers

def batch_badge_creator(attendees)
    message_array = []
    attendees.each do |attendee|
        message_array << badge_maker(attendee)
    end 
    message_array 
end
   
   
# assign_rom method that takes list of speakers and assigns each to a room
    # 1 - 7 rooms
    # returns a list of rooms assignment
        #"Hello, _____! You'll be assigned to room _____!"


# def assign_rooms(array_of_speakers)
#     room_array = []
#     array_of_speakers.each_with_index do |attendee, room_num| 
#       room_array <<  "Hello, #{attendee}! You'll be assigned to room #{room_num + 1}!"
#     end
# end 

def assign_rooms(array_of_speakers)
    array_of_speakers.map.with_index(1) do |attendee, room_num| 
       "Hello, #{attendee}! You'll be assigned to room #{room_num}!"
    end
end 




#printer will output the following...
    #first of the results of batch_badge_creator 
    # assign_room method results

def printer(array_of_speakers)
    batch_badge_creator(array_of_speakers).each do |badge|
        puts badge
    end

    assign_rooms(array_of_speakers).each do |assignment|
        puts assignment
    end
end



