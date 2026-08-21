return function(mod)
  mod.log:info("Cargando modulo: Evoluciones con Moon Stone (Gen 2)")

  -- 1. POLIWHIRL (Mantiene Water Stone para Poliwrath y Moon Stone para Politoed)
  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { item = "WATER_STONE", method = "ITEM", species = "POLIWRATH" },
      { item = "MOON_STONE",  method = "ITEM", species = "POLITOED" },
    },
  })

  -- 2. SLOWPOKE (Mantiene Nivel 37 para Slowbro y Moon Stone para Slowking)
  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { level = 37,          method = "LEVEL", species = "SLOWBRO" },
      { item = "MOON_STONE", method = "ITEM",  species = "SLOWKING" },
    },
  })

  -- 3. ONIX -> STEELIX
  mod.content.pokemon:patch("ONIX", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", species = "STEELIX" },
    },
  })

  -- 4. SCYTHER -> SCIZOR
  mod.content.pokemon:patch("SCYTHER", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", species = "SCIZOR" },
    },
  })

  -- 5. SEADRA -> KINGDRA
  mod.content.pokemon:patch("SEADRA", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", species = "KINGDRA" },
    },
  })

  -- 6. PORYGON -> PORYGON2
  mod.content.pokemon:patch("PORYGON", {
    evolutions = {
      { item = "MOON_STONE", method = "ITEM", species = "PORYGON2" },
    },
  })

  -- 7. INTERCAMBIOS CLÁSICOS DE GEN 1 (Opcional: también con Moon Stone)
  local gen1_trades = {
    { base = "KADABRA",  target = "ALAKAZAM" },
    { base = "MACHOKE",  target = "MACHAMP"  },
    { base = "GRAVELER", target = "GOLEM"    },
    { base = "HAUNTER",  target = "GENGAR"   },
  }

  for _, evo in ipairs(gen1_trades) do
    mod.content.pokemon:patch(evo.base, {
      evolutions = {
        { item = "MOON_STONE", method = "ITEM", species = evo.target },
      },
    })
  end
end