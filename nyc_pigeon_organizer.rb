def nyc_pigeon_organizer(data)
  # write your code here!
  new = data.each_with_object({}) { |(attribute, types), new_data|
    types.each { |type_value, names|
      names.each { |name| 
        if new_data.has_key?(name)
          if new_data[name].has_key?(attribute)
            new_data[name][attribute] << type_value.to_s
          else
            new_data[name][attribute] = [type_value.to_s]
          end
        else
          new_data[name] = {"#{attribute}": [type_value.to_s]}
        end
      }
    }
  }
end
