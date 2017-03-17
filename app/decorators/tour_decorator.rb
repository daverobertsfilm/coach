# app/decorators/post_decorator.rb
class TourDecorator < Draper::Decorator
  delegate_all

@tour = TourDecorator.new(Tour.all)
# or, equivalently
@tour = TourDecorator.decorate(Tour.all)
end
