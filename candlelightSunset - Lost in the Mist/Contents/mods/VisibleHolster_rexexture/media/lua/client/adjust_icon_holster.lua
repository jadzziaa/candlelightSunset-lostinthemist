function Adjust(Name, Property, Value)
  Item = ScriptManager.instance:getItem(Name)
  Item:DoParam(Property.." = "..Value)
  end
  
Adjust("Base.HolsterSimple","Icon","GunHolsterNew")
Adjust("Base.HolsterDouble","Icon","GunHolsterDoubleNew")