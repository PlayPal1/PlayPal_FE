class PlaygroundFacade

  def initialize(id)
    @id = id
  end

  def playground
    @_playground ||= Playground.new(playground_data)
  end

  def playground_id
    playground.id
  end

  def playground_name
    playground.name
  end

  def playground_address
    playground.address
  end

  def playground_rating
    playground.rating
  end

  def review
    @_review ||= review_data.map do |review|
       Review.new(review)
    end
  end


  private

  def service
    @service ||= PlaygroundsService.new
  end

  def playground_data
    @_playground_data ||= service.get_playground(@id)[:data]
  end

  def review_data
    @_review_data ||= service.get_reviews(@id)[:data]
  end
end