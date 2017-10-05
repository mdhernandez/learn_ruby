#write your code here
def ftoc temp
  ctemp = (5.0/9.0) * (temp - 32)
  return ctemp
end

def ctof temp
  ftemp = temp * (9.0/5.0) + 32
  return ftemp
end