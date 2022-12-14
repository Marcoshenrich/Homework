class SnackBox
  SNACK_BOX_DATA = {
    1 => {
      "bone" => {
        "info" => "Phoenician rawhide",
        "tastiness" => 20
      },
      "kibble" => {
        "info" => "Delicately braised hamhocks",
        "tastiness" => 33
      },
      "treat" => {
        "info" => "Chewy dental sticks",
        "tastiness" => 40
      }
    },
    2 => {
      "bone" => {
        "info" => "An old dirty bone",
        "tastiness" => 2
      },
      "kibble" => {
        "info" => "Kale clusters",
        "tastiness" => 1
      },
      "treat" => {
        "info" => "Bacon",
        "tastiness" => 80
      }
    },
    3 => {
      "bone" => {
        "info" => "A steak bone",
        "tastiness" => 64
      },
      "kibble" => {
        "info" => "Sweet Potato nibbles",
        "tastiness" => 45
      },
      "treat" => {
        "info" => "Chicken bits",
        "tastiness" => 75
      }
    }
  }
  def initialize(data = SNACK_BOX_DATA)
    @data = data
  end

  def get_bone_info(box_id)
    @data[box_id]["bone"]["info"]
  end

  def get_bone_tastiness(box_id)
    @data[box_id]["bone"]["tastiness"]
  end

  def get_kibble_info(box_id)
    @data[box_id]["kibble"]["info"]
  end

  def get_kibble_tastiness(box_id)
    @data[box_id]["kibble"]["tastiness"]
  end

  def get_treat_info(box_id)
    @data[box_id]["treat"]["info"]
  end

  def get_treat_tastiness(box_id)
    @data[box_id]["treat"]["tastiness"]
  end
end

class CorgiSnacks

  def initialize(snack_box, box_id)
    @snack_box = snack_box
    @box_id = box_id
  end

  def bone
    info = @snack_box.get_bone_info(@box_id)
    tastiness = @snack_box.get_bone_tastiness(@box_id)
    result = "Bone: #{info}: #{tastiness} "
    tastiness > 30 ? "* #{result}" : result
  end

  def kibble
    info = @snack_box.get_kibble_info(@box_id)
    tastiness = @snack_box.get_kibble_tastiness(@box_id)
    result = "Kibble: #{info}: #{tastiness} "
    tastiness > 30 ? "* #{result}" : result
  end

  def treat
    info = @snack_box.get_treat_info(@box_id)
    tastiness = @snack_box.get_treat_tastiness(@box_id)
    result = "Treat: #{info}: #{tastiness} "
    tastiness > 30 ? "* #{result}" : result
  end

end


class MetaCorgiSnacks
  def initialize(snack_box, box_id)
    @snack_box = snack_box
    @box_id = box_id
  end

  # def method_missing(name, *args)
  #   method_name = name.to_s
    
  # end


  #desired behavior -> 

  # pry(main)> snacks = MetaCorgiSnacks.new(snack_box, 1)
  # pry(main)> snacks.bone # => "Bone: Phoenician rawhide: 20"
  # pry(main)> snacks.kibble # => "* Kibble: Delicately braised hamhocks: 33"

  # def self.makes_sound(name)
  #   define_method(name) { puts "#{name}!" }
  # end

  def self.tasty_treats(name)
    define_method(name) { 
      info = @snack_box.get_treat_info(@box_id)
      tastiness = @snack_box.get_treat_tastiness(@box_id)
      result = "Treat: #{info}: #{tastiness} "
      tastiness > 30 ? "* #{result}" : result
    }
  end

  # tastytreats(:bone)
  # tastytreats(:kibble)
  # tastytreats(:treat)





  # SnackBox.send(:method_name) #<- how do I convert the input into this dynamic method name?

  # @snack_box.{variable method name}



  # def self.define_snack(name)
  #   @data[box_id]["kibble"]["info"]
  #   @data[box_id]["bone"]["tastiness"]

  #   info = @snack_box.get_{variable method name}_info(@box_id)
  #   tastiness = @snack_box.get_{variable method name}_tastiness(@box_id)
  #   result = "{variable method name}: #{info}: #{tastiness} "
  #   tastiness > 30 ? "* #{result}" : result
  # end
end


# Using a method_missing instance method, re-factor CorgiSnacks into the new MetaCorgiSnacks class to DRY things up!
# Hint: Within #method_missing use #send to call methods on your @snack_box. You can interpolate to get the method name, and then pass the method name to #send
# Review the metaprogramming reading if you need a reminder on how to use #send.