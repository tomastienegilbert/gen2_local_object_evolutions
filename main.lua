return function(mod)
  mod.log:info("Cargando modulo: Evoluciones por Objeto Directo (Gen 2)")

  -- 1. HABILITAR EL COMANDO 'USE' EN OBJETOS QUE ORIGINALMENTE ERAN SOLO EQUIPABLES
  local evolution_items = {
    "KINGS_ROCK",
    "METAL_COAT",
    "DRAGON_SCALE",
    "UP_GRADE",
  }

  for _, item_name in ipairs(evolution_items) do
    mod.content.items:patch(item_name, {
      can_use_on_pokemon = true,
    })
  end

  -- 2. EVOLUCIONES POR OBJETO DIRECTO

  -- Poliwhirl -> Poliwrath (Piedra Agua) o Politoed (Roca del Rey)
  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { item = "WATER_STONE", method = "ITEM", species = "POLIWRATH" },
      { item = "KINGS_ROCK",  method = "ITEM", species = "POLITOED" },
    },
  })

  -- Slowpoke -> Slowbro (Nivel 37) o Slowking (Roca del Rey)
  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { level = 37, method = "LEVEL", species = "SLOWBRO" },
      { item = "KINGS_ROCK", method = "ITEM", species = "SLOWKING" },
    },
  })

  -- Onix -> Steelix (Revestimiento Metálico)
  mod.content.pokemon:patch("ONIX", {
    evolutions = {
      { item = "METAL_COAT", method = "ITEM", species = "STEELIX" },
    },
  })

  -- Scyther -> Scizor (Revestimiento Metálico)
  mod.content.pokemon:patch("SCYTHER", {
    evolutions = {
      { item = "METAL_COAT", method = "ITEM", species = "SCIZOR" },
    },
  })

  -- Seadra -> Kingdra (Escama Dragón)
  mod.content.pokemon:patch("SEADRA", {
    evolutions = {
      { item = "DRAGON_SCALE", method = "ITEM", species = "KINGDRA" },
    },
  })

  -- Porygon -> Porygon2 (Mejora / Up-Grade)
  mod.content.pokemon:patch("PORYGON", {
    evolutions = {
      { item = "UP_GRADE", method = "ITEM", species = "PORYGON2" },
    },
  })
end