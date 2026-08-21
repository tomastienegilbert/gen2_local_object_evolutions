return function(mod)
  mod.log:info("Cargando modulo: Evoluciones con Moon Stone")

  -- Poliwhirl -> Poliwrath (Water Stone) / Politoed (Moon Stone)
  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { item = "WATER_STONE", method = "ITEM", target = "POLIWRATH" },
      { item = "MOON_STONE",  method = "ITEM", target = "POLITOED" },
      -- Agregamos 'species' tambien por redundancia de API
      { item = "WATER_STONE", method = "ITEM", species = "POLIWRATH" },
      { item = "MOON_STONE",  method = "ITEM", species = "POLITOED" },
    },
  })

  -- Slowpoke -> Slowbro (Nivel 37) / Slowking (Moon Stone)
  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { level = 37,          method = "LEVEL", target = "SLOWBRO", species = "SLOWBRO" },
      { item = "MOON_STONE", method = "ITEM",  target = "SLOWKING", species = "SLOWKING" },
    },
  })

  -- Onix -> Steelix
  mod.content.pokemon:patch("ONIX", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", target = "STEELIX", species = "STEELIX" },
    },
  })

  -- Scyther -> Scizor
  mod.content.pokemon:patch("SCYTHER", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", target = "SCIZOR", species = "SCIZOR" },
    },
  })

  -- Seadra -> Kingdra
  mod.content.pokemon:patch("SEADRA", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", target = "KINGDRA", species = "KINGDRA" },
    },
  })

  -- Porygon -> Porygon2
  mod.content.pokemon:patch("PORYGON", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", target = "PORYGON2", species = "PORYGON2" },
    },
  })
end