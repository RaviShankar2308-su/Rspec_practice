module HomeHelper
  def index
    @hello  = "Harry"
  end
  def create(name1="")
    @hello = Hello.new(name: name1)
    @hello.save
  end
  def create1(name = "")
    @hello = Hello.new(name: name)
    @hello.save
  end
end
