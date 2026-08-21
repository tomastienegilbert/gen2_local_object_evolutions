return function(mod)
  mod.log:info(">>> MOD ACTIVADO: Evoluciones con Moon Stone cargando...")

  -- POLIWHIRL
  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { method = "ITEM", item = "WATER_STONE", species = "POLIWRATH" },
      { method = "ITEM", item = "MOON_STONE",  species = "POLITOED" }
    }
  })

  -- SLOWPOKE
  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { method = "LEVEL", level = 37,          species = "SLOWBRO" },
      { method = "ITEM",  item = "MOON_STONE", species = "SLOWKING" }
    }
  })

  -- ONIX
  mod.content.pokemon:patch("ONIX", {
    evolutions = {
      { method = "ITEM", item = "MOON_STONE", species = "STEELIX" }
    }
  })

  -- SCYTHER
  mod.content.pokemon:patch("SCYTHER", {
    evolutions = {
      { method = "ITEM", item = "MOON_STONE", species = "SCIZOR" }
    }
  })

  -- SEADRA
  mod.content.pokemon:patch("SEADRA", {
    evolutions = {
      { method = "ITEM", item = "MOON_STONE", species = "KINGDRA" }
    }
  })

  -- PORYGON
  mod.content.pokemon:patch("PORYGON", {
    evolutions = {
      { method = "ITEM", item = "MOON_STONE", species = "PORYGON2" }
    }
  })
end