class CheckAge
  ADULT_AGE = 18

  def initialize(user)
    @user = user
  end

  def execute
    is_adult? ? 'The user is adult' : 'The user is not adult'
  end

  private

  def is_adult?
    @user.age > ADULT_AGE
  end
end
