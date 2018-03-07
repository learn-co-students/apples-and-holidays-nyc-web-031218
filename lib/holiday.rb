require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array



def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
      value << supply
 end
end
# holiday_hash is identical to the one above
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end
# again, holiday_hash is the same as the ones above
# add the second argument to the memorial day array



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season]= {holiday_name => supply_array}
  holiday_hash
end
  # code here
  # remember to return the updated hash



def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end
  # return an array of all of the supplies that are used in the winter season


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, item|
      puts "  #{holiday.to_s.split("_").map {|h| h.capitalize}.join(" ")}: #{item.join(", ")}"
    end #ends holiday.each
  end #ends holiday_hash.each
end #ends method
# iterate through holiday_hash and print items such that your readout resembles:
#WHAT SHOULD PRINT OUT
#Winter:
  #Christmas: Lights, Wreath
  #New Years: Party Hats
#Summer:
  #Fourth Of July: Fireworks, BBQ
#Fall:
  #Thanksgiving: Turkey
#Spring:
  #Memorial Day: BBQ

#WHAT IT LOOKS LIKE NOW
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]},
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]},
#   :fall => {
#     :thanksgiving => ["Turkey"]},
#   :spring => {
#     :memorial_day => ["BBQ"]}
# }

def all_holidays_with_bbq(holiday_hash)
  holiday_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, item|
      if item.include?("BBQ")
        holiday_bbq.push(holiday)
      end
    end
  end
  holiday_bbq
end


# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"
# July 4th and Memorial Day
