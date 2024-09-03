function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
      return count > 0
    else
      return count == amount
    end
end

function has_pp(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if amount < count then
      return count > 0
    else
      return count == amount
    end
end

function checkRequirements(reference, check_count)
    local reqCount = Tracker:ProviderCountForCode(reference)
    local count = Tracker:ProviderCountForCode(check_count)
  
    if count >= reqCount then
        return true
    else
        return false
    end
end

function jungle()
    return true
end

function ancient()
    return has("centarumon")
end

function mansion()
    return has("centarumon")
end

function canyon()
    return has_pp("prosperity_counter", 6) and has("centarumon")
end

function freezeland()
    return has("meramon") or (has_pp("prosperity_counter", 6) and has("centarumon"))
end

function panorama()
    return has("meramon") or (has_pp("prosperity_counter", 6) and has("centarumon"))
end

function savanna()
    return has("meramon") or (has_pp("prosperity_counter", 6) and has("centarumon"))
end

function swamp()
    return has("meramon") or (has_pp("prosperity_counter", 6) and has("centarumon"))
end

function misty()
    return has("meramon") or (has_pp("prosperity_counter", 6) and has("centarumon"))
end

function toy()
    return has("meramon") and (has_pp("prosperity_counter", 6) and has("centarumon"))
end

function beetle()
    return has("seadramon") and (has("meramon") or (has_pp("prosperity_counter", 6) and has("centarumon")))
end

function factorial()
    return has("whamon") and has_pp("prosperity_counter", 6) and has("centarumon")
end

function infinity()
    return has("airdramon") and has_pp("prosperity_counter", 50)
end

------------------------------------------

function rain_plant()
    return has("palmon")
end

function clinic()
    return has("centarumon")
end

function item_shop()
    return has("biyomon") or has("monochromon") or has("patamon") or has("unimon")
end

function restaurant()
    return  has("frigimon") or has("garurumon") or has("meramon") or has("tyrannomon") or has("digitamamon")
end

function arena()
    return has("greymon")
end

function factorio()
    return clinic() and item_shop() and restaurant() and arena()
end

function bulletin_board()
    return has("shellmon")
end

function secret_item_shop()
    return has("devimon") or has("mamemon") or has("numemon") or has("mojyamon")
end

function ogre_reqs()
    return has_pp("prosperity_counter", 6) and has("whamon")
end

function nani_reqs()
    return has_pp("prosperity_counter", 45) and has("whamon") and has("centarumon") and has("tyrannomon") and has("meramon")
end
