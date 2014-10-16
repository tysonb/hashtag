class Searcher
  class_attribute :searcher
  self.searcher = TwitterClient
  attr_reader :results

  def initialize(search_term)
    @results = searcher.search(search_term)
  end
end
