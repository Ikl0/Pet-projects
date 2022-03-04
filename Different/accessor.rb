class Module

  def self.my_attr_accessor(*args)
    args.each do |name|
      define_method(name){instance_variable_get("@#{name}")}
      define_method("#{name}="){|arg|instance_variable_set("@#{name}",arg)}
    end
  end

  def my_attr_accessor1(*args)
    args.each do |name|
      define_method(name){self.class.class_variable_get("@@#{name}")}
      define_method("#{name}="){|arg|self.class.class_variable_set("@@#{name}",arg)}
    end
  end
  #my_attr_accessor(:name)
  self. my_attr_accessor1(:amount)

end
class Auto

  my_attr_accessor1(:amount)
end

auto1 = Auto.new
#auto1.name = gets.chomp
#p auto1.name
auto1.amount = 4
p auto1.amount