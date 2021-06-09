-- basics practice

print("gonna print nil")
print(undefinedVariable)

hero = {
    firstName = "Link",
    lastName = "Linky",
    fullName,
    hp = 100.0,
    mana = 100.0,
    level = 1,
    sex = "man",
    class = "mage",
    items = {
      weapons = {
        melees = {
          oneHandedSword = { 
            genre = "short",
            damage = 10,
            protection = 2,
            class = "common",
            price = 10.12
          }
        },
        distance = {
          bow = {
              name = "bow",
              genre = "range",
              maxRange = 2.0,
              damage = 6,
              protection = 0,
              class = "common",
              price = 10.0
          },
          rock = {
              name = "rock",
              genre = "range",
              damage = 1,
              protection = 0,
              class = "common",
              price = 0.0
          }  
        },
        shields = {
          kingShield =  {
            genre = "shield",
            damage = 2,
            protection = 10,
            class = "epic",
            price = 100.0
          }
        },
        potions = {
          healthPotion = {
            health = 10.0
          }
        }
      }
    }
}


hero.fullName = hero.firstName .. hero.lastName

print("Status of ", hero.fullName)
print("hp = "..hero.hp.." mana = "..hero.mana)

local heroDistances = hero.items.weapons.distance

print("distance :\n",heroDistances.bow.name.." | "..heroDistances.rock.name)

local realDamageOfBow = heroDistances.bow.damage * heroDistances.bow.maxRange

print(realDamageOfBow)

lampState = true
print("lamp is on")
lampState = false 
print("lamp is off")


print("iterate from 0 to 10")
for iterator=0,10 do
  print("iterator = ", iterator)
end
print("iterator ended")




print("iterate from 0 to 100 with 10 steps")
for iterator=0,100,10 do
  print("iterator = ", iterator)
end
print("iterator ended")



print("iterate from 0 to 100 with -10 steps")
for iterator=0,100,-10 do
  print("iterator = ", iterator)
end
print("iterator ended")

print("while")
iterator = 0
while iterator < 100 do
  iterator = iterator + 10
  if(iterator == 50) then
    print("50")
    break
  elseif(iterator ~= 5) then
    print("not 5")
  else
    print("iterator = ", iterator)
  end
end
print("while ended")

global = 10
function sum(a, b)
  global = a + b
  return global
end

sum = sum(10, 10)
print(sum)
print(global)

global = 10
function localSum(a, b)
  local global = a + b
  return global
end
print(localSum(10, 10))
print(global)

function simpleTrueReturn()
  return true
end

if(simpleTrueReturn) then
  print("ok")
end


