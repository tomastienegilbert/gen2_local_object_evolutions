return function(mod)
  mod.log:info("Cargando modulo: Evoluciones por Objeto Directo (Gen 2)")

  -- 1. Onix -> Steelix (Uso directo de Metal Coat)
  mod.content.pokemon:patch("ONIX", {
    evolutions = {
      { item = "METAL_COAT", method = "ITEM", species = "STEELIX" },
    },
  })

  -- 2. Scyther -> Scizor (Uso directo de Metal Coat)
  mod.content.pokemon:patch("SCYTHER", {
    evolutions = {
      { item = "METAL_COAT", method = "ITEM", species = "SCIZOR" },
    },
  })

  -- 3. Seadra -> Kingdra (Uso directo de Dragon Scale)
  mod.content.pokemon:patch("SEADRA", {
    evolutions = {
      { item = "DRAGON_SCALE", method = "ITEM", species = "KINGDRA" },
    },
  })

  -- 4. Porygon -> Porygon2 (Uso directo de Up-Grade)
  mod.content.pokemon:patch("PORYGON", {
    evolutions = {
      { item = "UP_GRADE", method = "ITEM", species = "PORYGON2" },
    },
  })

  -- 5. Slowpoke -> Slowbro (Nivel 37) o Slowking (Uso directo de King's Rock)
  -- Nota: Se mantiene el método de nivel para no anular a Slowbro
  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { level = 37, method = "LEVEL", species = "SLOWBRO" },
      { item = "KINGS_ROCK", method = "ITEM", species = "SLOWKING" },
    },
  })

  -- 6. Poliwhirl -> Poliwrath (Water Stone) o Politoed (Uso directo de King's Rock)
  -- Nota: Se mantiene la Water Stone original para no anular a Poliwrath
  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { item = "WATER_STONE", method = "ITEM", species = "POLIWRATH" },
      { item = "KINGS_ROCK", method = "ITEM", species = "POLITOED" },
    },
  })
end