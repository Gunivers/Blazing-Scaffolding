import math

for i in range(25, 165, 5):
    spread = str(math.floor((i-5)/2))
    rangeStart = str(i)
    rangeEnd = str(i+4)
    print("execute positioned 0 0 0 if score WBSize options matches "+rangeStart+".."+rangeEnd+" run spreadplayers 0 0 "+spread+" "+spread+" false @e[type=marker,tag=spread]")


a = "execute positioned 0 0 0 if score WBSize options matches 15..19 run spreadplayers 0 0 5 5 false @e[type=marker,tag=spread]"