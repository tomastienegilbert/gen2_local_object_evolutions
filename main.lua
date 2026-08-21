return function(mod)
  mod.log:info("Loaded: Level-up Trade Evolutions Mod")

  -- Intercept the native evolution check
  mod.hooks:register("evolution.check", function(origCheck, game, mon, evo, trigger)
    -- If it's a TRADE evolution and the trigger is leveling up
    if evo.method == "TRADE" and trigger.kind == "levelup" then
      local Evolution = require("src.pokemon.Evolution")
      
      -- If holding Everstone, prevent evolution
      if Evolution.holdsEverstone(game, mon) then
        return false
      end

      -- If it requires a held item (e.g. King's Rock, Metal Coat)
      if evo.heldItem then
        return Evolution.itemMatches(game, mon.item, evo.heldItem)
      end

      -- Trade evos without items (Kadabra, Haunter, etc.) evolve freely on level up
      return true
    end

    -- Fallback to the original engine logic for all other cases
    return origCheck(game, mon, evo, trigger)
  end)
end