class ApplicationController < ActionController::Base
  skip_forgery_protection

  def home
    render({:template => "home"})
  end

  def two_six
    @rolls = []
    2.times do
      face = rand(1..6)
      @rolls.push(face)
    end
    render({:template => "two_six"})
  end

  def two_ten
    @rolls = []
    2.times do
      face = rand(1..10)
      @rolls.push(face)
    end
    render({:template => "two_ten"})
  end

  def one_twenty
    @roll = rand(1..20)
    render({:template => "one_twenty"})
  end

  def five_four
    @rolls = []
    5.times do
      face = rand(1..4)
      @rolls.push(face)
    end
    render({:template => "five_four"})
  end

  def random
    @dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("number_of_sides").to_i

    # key is set by developers and value is
    # input by user
    @rolls = []

    @dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end
    render({:template => "random"})
  end

end
