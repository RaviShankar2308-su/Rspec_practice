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
  def update(id = 1,name= "")
    @hello = Hello.find(id)
    @hello.update(name: name)
  end
  def destroy(id = 1)
    @hello  = Hello.find(id)
    @hello.destroy
  end
end
