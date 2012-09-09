class Dictionary

  def initialize(data = {})
    @dictionarydata = data
  end

  def entries
    @dictionarydata
  end

  def add(entry)
    if entry.class == Hash
      @dictionarydata[entry.keys[0]]=entry.values[0]
    elsif entry.class == String
      @dictionarydata[entry] = nil
    end
  end

  def keywords
    @dictionarydata.keys.sort!
  end

  def include?(key)
    keys = keywords
    keys.include? key
  end

  def find(searchstring)
    @returnhash = {}
    entries.each do  |keyword, value|
      if keyword.start_with?(searchstring)
        @returnhash[keyword] = value
      end
    end
    @returnhash
  end
end

