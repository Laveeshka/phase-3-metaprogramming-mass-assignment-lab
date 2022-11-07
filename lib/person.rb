class Person
  # your code here
  # attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  # def initialize(name:, birthday:, hair_color:, eye_color:, height:, weight:, handed:, complexion:, t_shirt_size:, wrist_size:, glove_size:, pant_length:, pant_width:)
  #   @name = name
  #   @birthday = birthday
  #   @hair_color = hair_color
  #   @eye_color = eye_color
  #   @height = height
  #   @weight = weight
  #   @handed = handed
  #   @complexion = complexion
  #   @t_shirt_size = t_shirt_size
  #   @wrist_size = wrist_size
  #   @glove_size = glove_size
  #   @pant_length = pant_length
  #   @pant_width = pant_width
  # end

  def initialize(attributes)
    attributes.each do |key, value|
      #creates a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
      #setter for the key attribute
      self.send("#{key}=", value) 
    end
  end

end
