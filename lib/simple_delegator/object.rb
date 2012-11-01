class Object
  def self.delegate(method_name, options = {})
    define_method(method_name) do
      to = options.fetch(:to, nil)

      target = if to.nil?
                 self
               else
                 if instance_variable_defined? "@#{to}"
                   instance_variable_get "@#{to}"
                 else
                   self.send to
                 end
               end

      new_method_name = options.fetch(:as, method_name)
      target.send(new_method_name)
    end
  end
end