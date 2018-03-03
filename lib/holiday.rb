require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash.each {|season,holiday|
      if season == :winter

        holiday.each {|holiday, supplies|
             supplies.push(supply)


        }
      end
    }
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each {|season,holiday|
    if season == :spring

      holiday.each {|holiday, supplies|
           supplies.push(supply)


      }
    end
  }
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each {|season,holiday|
       if season == :winter

         holiday.each {|holiday, supplies|
              supplies.each {|supply|
                winter_supplies.push(supply)
              }

         }
       end
     }
     winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each {|season, holiday|

     puts "#{season.capitalize}:"
         holiday.collect {|holiday,supplies|
           puts  "  " + holiday.to_s.split('_').each {|word|
               word.capitalize!
           }.join(' ') + ": " + supplies.join(', ')
         }

   }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidayBBQ = []
  holiday_hash.each {|season,holiday|
      # if season == :winter

        holiday.each {|holiday, supplies|

              supplies.each {|supply|
                if supply == "BBQ"
                    holidayBBQ.push(holiday)
                end
              }

        }
      # end
    }
    holidayBBQ
end
