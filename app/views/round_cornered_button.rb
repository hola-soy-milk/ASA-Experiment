class RoundCorneredButton < UIButton; end

def RoundCorneredButton.systemButton
  button = RoundCorneredButton.buttonWithType(UIButtonTypeSystem)
  button.layer.cornerRadius = 15
  button.layer.borderWidth = 2
  button.layer.borderColor = UIColor.blackColor.CGColor
  button
end
