return function(mod)
  mod.log:info(">>> Mod Evoluciones Autonomas Cargado Correctamente")

  -- Tabla de mapeo: Pokemon Base -> { Nivel Requerido, Especie Destino }
  local custom_evolutions = {
    POLIWHIRL = { level = 37, target = "POLITOED" },
    SLOWPOKE  = { level = 37, target = "SLOWKING" },
    ONIX      = { level = 40, target = "STEELIX" },
    SCYTHER   = { level = 40, target = "SCIZOR" },
    SEADRA    = { level = 45, target = "KINGDRA" },
    PORYGON   = { level = 30, target = "PORYGON2" },
    KADABRA   = { level = 38, target = "ALAKAZAM" },
    MACHOKE   = { level = 40, target = "MACHAMP" },
    GRAVELER  = { level = 38, target = "GOLEM" },
    HAUNTER   = { level = 38, target = "GENGAR" },
  }

  -- 1. Intentar el patch estatico
  for base, data in pairs(custom_evolutions) do
    if mod.content and mod.content.pokemon then
      mod.content.pokemon:patch(base, {
        evolutions = {
          { method = "LEVEL", level = data.level, species = data.target, target = data.target }
        }
      })
    end
  end

  -- 2. Hook en tiempo de ejecucion al subir de nivel
  if mod.hooks and mod.hooks.on_level_up then
    mod.hooks:on_level_up(function(pokemon)
      local evo = custom_evolutions[pokemon.species]
      if evo and pokemon.level >= evo.level then
        pokemon:trigger_evolution(evo.target)
      end
    end)
  end
end