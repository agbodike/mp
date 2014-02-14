class Integer
  def prime?
    case
    when self < 2 then false
    when self == 2 then true
    when self == 3 then true
    when self % 2 == 0 then false
    when self % 3 == 0 then false
    end
  end

end
