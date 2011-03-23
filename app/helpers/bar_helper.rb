module BarHelper
  def write_all_recs value
    result = ''
    for i in value
      result += 'Hello ' + i.to_s
    end
    result
  end

  def write_list_from_hash value
    result = ''
    value.each { |val| result += " -- #{val.to_s} -- " }
    result
  end

end
