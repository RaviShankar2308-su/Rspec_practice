module HomeHelper
  def index
    @hello  = "Harry"
  end
  def new
  end
  def create1(name = " ")
    @hello = Hello.new(name: name)
    @hello.save
  end
end
