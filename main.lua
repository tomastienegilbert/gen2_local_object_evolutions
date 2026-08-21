return function(mod)
  mod.log:info("Cargando modulo: Evoluciones por Nivel (Gen 2)")

  -- Poliwhirl -> Politoed al subir al nivel 37 (o usar Caramelo Raro)
  -- Conserva Water Stone nativa para Poliwrath
  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { item = "WATER_STONE", method = "ITEM",  species = "POLIWRATH" },
      { level = 37,           method = "LEVEL", species = "POLITOED" },
    },
  })

  -- Slowpoke -> Slowbro (37 original) y Slowking (38)
  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { level = 37, method = "LEVEL", species = "SLOWBRO" },
      { level = 38, method = "LEVEL", species = "SLOWKING" },
    },
  })

  -- Onix -> Steelix (Nivel 40)
  mod.content.pokemon:patch("ONIX", {
    evolutions = {
      { level = 40, method = "LEVEL", species = "STEELIX" },
    },
  })

  -- Scyther -> Scizor (Nivel 40)
  mod.content.pokemon:patch("SCYTHER", {
    evolutions = {
      { level = 40, method = "LEVEL", species = "SCIZOR" },
    },
  })

  -- Seadra -> Kingdra (Nivel 45)
  mod.content.pokemon:patch("SEADRA", {
    evolutions = {
      { level = 45, method = "LEVEL", species = "KINGDRA" },
    },
  })

  -- Porygon -> Porygon2 (Nivel 30)
  mod.content.pokemon:patch("PORYGON", {
    evolutions = {
      { level = 30, method = "LEVEL", species = "PORYGON2" },
    },
  })

  -- Intercambios clásicos de Gen 1
  local trade_evos = {
    { base = "KADABRA",  target = "ALAKAZAM", level = 38 },
    { base = "MACHOKE",  target = "MACHAMP",  level = 40 },
    { base = "GRAVELER", target = "GOLEM",    level = 38 },
    { base = "HAUNTER",  target = "GENGAR",   level = 38 },
  }

  for _, evo in ipairs(trade_evos) do
    mod.content.pokemon:patch(evo.base, {
      evolutions = {
        { level = evo.level, method = "LEVEL", species = evo.target },
      },
    })
  end
end