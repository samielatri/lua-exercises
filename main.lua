
-- exercice 1 :
print("gonna print nil")
print(undefinedVariable)

-- exercice 2 :

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

-- exercice 3 
lampState = true
print("lamp is on")
lampState = false 
print("lamp is off")

