class PathFileOperations
  DELIMITER = '\\'

  def initialize
  end

  def join path, file_name
    path = get_correct_path (path)
    file_name = get_correct_file_name (file_name)
    
    path + file_name
  end

  def get_correct_path path
    if path[path.length-DELIMITER.length..path.length] != DELIMITER
      return path + DELIMITER
    end

    path
  end

  def get_correct_file_name file_name
    if file_name.include? DELIMITER
      return file_name[(file_name.rindex(DELIMITER) + DELIMITER.length)..file_name.length]
    end

    file_name
  end
end