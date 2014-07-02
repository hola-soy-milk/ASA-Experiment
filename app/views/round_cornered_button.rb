class RoundCorneredButton < UIButton

  def setHighlighted(highlighted)
    if highlighted
      self.layer.borderColor = UIColor.lightGrayColor.CGColor
    else
      self.layer.borderColor = UIColor.blueColor.CGColor
    end
  end
end

def RoundCorneredButton.systemButton
  button = RoundCorneredButton.buttonWithType(UIButtonTypeSystem)
  button.layer.cornerRadius = 15
  button.layer.borderWidth = 2
  button.layer.borderColor = UIColor.blueColor.CGColor
  button
end
