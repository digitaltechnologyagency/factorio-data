local physical_projectile_damage_1_icon = "__base__/graphics/technology/physical-projectile-damage-1.png"
local physical_projectile_damage_2_icon = "__base__/graphics/technology/physical-projectile-damage-2.png"
local stronger_explosives_1_icon = "__base__/graphics/technology/stronger-explosives-1.png"
local stronger_explosives_2_icon = "__base__/graphics/technology/stronger-explosives-2.png"
local stronger_explosives_3_icon = "__base__/graphics/technology/stronger-explosives-3.png"
local refined_flammables_icon = "__base__/graphics/technology/refined-flammables.png"
local energy_weapons_damage_1_icon = "__base__/graphics/technology/energy-weapons-damage.png"
local energy_weapons_damage_2_icon = "__base__/graphics/technology/energy-weapons-damage.png"
local energy_weapons_damage_3_icon = "__base__/graphics/technology/energy-weapons-damage.png"
local weapon_shooting_speed_1_icon = "__base__/graphics/technology/weapon-shooting-speed-1.png"
local weapon_shooting_speed_2_icon = "__base__/graphics/technology/weapon-shooting-speed-2.png"
local weapon_shooting_speed_3_icon = "__base__/graphics/technology/weapon-shooting-speed-3.png"
local laser_shooting_speed_icon = "__base__/graphics/technology/laser-shooting-speed.png"

data:extend(
{
  {
    type = "technology",
    name = "physical-projectile-damage-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.1
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      }
    },
    prerequisites = {"military"},
    unit =
    {
      count = 100*1,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-l-a"
  },
  {
    type = "technology",
    name = "physical-projectile-damage-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.1
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      }
    },
    prerequisites = {"physical-projectile-damage-1"},
    unit =
    {
      count = 100*2,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-l-b"
  },
  {
    type = "technology",
    name = "weapon-shooting-speed-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(weapon_shooting_speed_1_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      }
    },
    prerequisites = {"military"},
    unit =
    {
      count = 100*1,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-j-a"
  },
  {
    type = "technology",
    name = "weapon-shooting-speed-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(weapon_shooting_speed_1_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      }
    },
    prerequisites = {"weapon-shooting-speed-1"},
    unit =
    {
      count = 100*2,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-l-b"
  },
  {
    type = "technology",
    name = "stronger-explosives-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(stronger_explosives_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.25
      }
    },
    prerequisites = {"military-2"},
    unit =
    {
      count = 100*1,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-j-a"
  },
  {
    type = "technology",
    name = "physical-projectile-damage-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      }
    },
    prerequisites = {"physical-projectile-damage-2"},
    unit =
    {
      count = 100*3,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-c"
  },
  {
    type = "technology",
    name = "physical-projectile-damage-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      }
    },
    prerequisites = {"physical-projectile-damage-3"},
    unit =
    {
      count = 100*4,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-d"
  },
  {
    type = "technology",
    name = "physical-projectile-damage-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_2_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 0.9
      }
    },
    prerequisites = {"physical-projectile-damage-4"},
    unit =
    {
      count = 100*5,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-e"
  },
  {
    type = "technology",
    name = "physical-projectile-damage-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_2_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 1.3
      }
    },
    prerequisites = {"physical-projectile-damage-5"},
    unit =
    {
      count = 100*6,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "physical-projectile-damage-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_2_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 1
      }
    },
    prerequisites = {"physical-projectile-damage-6", "space-science-pack"},
    unit =
    {
      count_formula = "2^(L-7)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "stronger-explosives-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(stronger_explosives_2_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.20
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    },
    prerequisites = {"stronger-explosives-1"},
    unit =
    {
      count = 100*2,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-l-b"
  },
  {
    type = "technology",
    name = "stronger-explosives-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(stronger_explosives_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = 0.3
      },
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    },
    prerequisites = {"stronger-explosives-2"},
    unit =
    {
      count = 100*3,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-c"
  },
  {
    type = "technology",
    name = "stronger-explosives-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(stronger_explosives_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    },
    prerequisites = {"stronger-explosives-3"},
    unit =
    {
      count = 100*4,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-d"
  },
  {
    type = "technology",
    name = "stronger-explosives-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(stronger_explosives_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    },
    prerequisites = {"stronger-explosives-4"},
    unit =
    {
      count = 100*5,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-e"
  },
  {
    type = "technology",
    name = "stronger-explosives-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(stronger_explosives_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = 0.6
      },
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    },
    prerequisites = {"stronger-explosives-5"},
    unit =
    {
      count = 100*6,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "stronger-explosives-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(stronger_explosives_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    },
    prerequisites = {"stronger-explosives-6", "space-science-pack"},
    unit =
    {
      count_formula = "2^(L-7)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },

})

data:extend(
{
  {
    type = "technology",
    name = "refined-flammables-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(refined_flammables_icon),
    effects =
    {
            {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.2
      }
    },
    prerequisites = {"flamethrower"},
    unit =
    {
      count = 100*1,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-j-a"
  },
  {
    type = "technology",
    name = "refined-flammables-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(refined_flammables_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.2
      }
    },
    prerequisites = {"refined-flammables-1"},
    unit =
    {
      count = 100*2,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-l-b"
  },
  {
    type = "technology",
    name = "refined-flammables-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(refined_flammables_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.2
      }
    },
    prerequisites = {"refined-flammables-2"},
    unit =
    {
      count = 100*3,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-c"
  },
  {
    type = "technology",
    name = "refined-flammables-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(refined_flammables_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.3
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.3
      }
    },
    prerequisites = {"refined-flammables-3"},
    unit =
    {
      count = 100*4,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-d"
  },
  {
    type = "technology",
    name = "refined-flammables-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(refined_flammables_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.3
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.3
      }
    },
    prerequisites = {"refined-flammables-4"},
    unit =
    {
      count = 100*5,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-e"
  },
  {
    type = "technology",
    name = "refined-flammables-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(refined_flammables_icon),
    effects =
    {
     {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.4
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.4
      }
    },
    prerequisites = {"refined-flammables-5"},
    unit =
    {
      count = 100*6,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "refined-flammables-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(refined_flammables_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.2
      }
    },
    prerequisites = {"refined-flammables-6", "space-science-pack"},
    unit =
    {
      count_formula = "2^(L-7)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },

})

data:extend(
{
  {
    type = "technology",
    name = "energy-weapons-damage-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(energy_weapons_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.2
      }
    },
    prerequisites = {"laser", "military-science-pack"},
    unit =
    {
      count = 100*1,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-j-a"
  },
  {
    type = "technology",
    name = "energy-weapons-damage-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(energy_weapons_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.2
      }
    },
    prerequisites = {"energy-weapons-damage-1"},
    unit =
    {
      count = 100*2,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-l-b"
  },
  {
    type = "technology",
    name = "energy-weapons-damage-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(energy_weapons_damage_1_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.3
      }
    },
    prerequisites = {"energy-weapons-damage-2"},
    unit =
    {
      count = 100*3,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-c"
  },
  {
    type = "technology",
    name = "energy-weapons-damage-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(energy_weapons_damage_2_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.4
      }
    },
    prerequisites = {"energy-weapons-damage-3"},
    unit =
    {
      count = 100*4,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-d"
  },
  {
    type = "technology",
    name = "energy-weapons-damage-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(energy_weapons_damage_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.4
      }
    },
    prerequisites = {"energy-weapons-damage-4"},
    unit =
    {
      count = 100*5,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-e"
  },
  {
    type = "technology",
    name = "energy-weapons-damage-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(energy_weapons_damage_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.6
      }
    },
    prerequisites = {"energy-weapons-damage-5"},
    unit =
    {
      count = 100*6,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "energy-weapons-damage-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(energy_weapons_damage_3_icon),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.3
      }
    },
    prerequisites = {"energy-weapons-damage-6", "space-science-pack"},
    unit =
    {
      count_formula = "2^(L-7)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  }
})

data:extend(
{
  {
    type = "technology",
    name = "weapon-shooting-speed-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(weapon_shooting_speed_2_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.5
      }
    },
    prerequisites = {"weapon-shooting-speed-2"},
    unit =
    {
      count = 100*3,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-c"
  },
  {
    type = "technology",
    name = "weapon-shooting-speed-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(weapon_shooting_speed_2_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.3
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.3
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.7
      }
    },
    prerequisites = {"weapon-shooting-speed-3"},
    unit =
    {
      count = 100*4,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-d"
  },
  {
    type = "technology",
    name = "weapon-shooting-speed-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(weapon_shooting_speed_3_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.3
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 0.8
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.9
      }
    },
    prerequisites = {"weapon-shooting-speed-4"},
    unit =
    {
      count = 100*5,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-e"
  },
  {
    type = "technology",
    name = "weapon-shooting-speed-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(weapon_shooting_speed_3_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 1.5
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 1.3
      }
    },
    prerequisites = {"weapon-shooting-speed-5"},
    unit =
    {
      count = 100*6,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },

})

data:extend(
{
  {
    type = "technology",
    name = "laser-shooting-speed-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(laser_shooting_speed_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.1
      }
    },
    prerequisites = {"laser", "military-science-pack"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-n-h"
  },
  {
    type = "technology",
    name = "laser-shooting-speed-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(laser_shooting_speed_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.2
      }
    },
    prerequisites = {"laser-shooting-speed-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-n-i"
  },
  {
    type = "technology",
    name = "laser-shooting-speed-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(laser_shooting_speed_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.3
      }
    },
    prerequisites = {"laser-shooting-speed-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-n-j"
  },
  {
    type = "technology",
    name = "laser-shooting-speed-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(laser_shooting_speed_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.3
      }
    },
    prerequisites = {"laser-shooting-speed-3"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-n-k"
  },
  {
    type = "technology",
    name = "laser-shooting-speed-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(laser_shooting_speed_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.4
      }
    },
    prerequisites = {"laser-shooting-speed-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-n-l"
  },
  {
    type = "technology",
    name = "laser-shooting-speed-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(laser_shooting_speed_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.4
      }
    },
    prerequisites = {"laser-shooting-speed-5"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-n-m"
  },
  {
    type = "technology",
    name = "laser-shooting-speed-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed(laser_shooting_speed_icon),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.5
      }
    },
    prerequisites = {"laser-shooting-speed-6"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-n-n"
  }
})

data:extend(
{
  {
    type = "technology",
    name = "artillery-shell-range-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_range("__base__/graphics/technology/artillery-range.png"),
    effects =
    {
      {
        type = "artillery-range",
        modifier = 0.3
      }
    },
    prerequisites = {"artillery", "space-science-pack"},
    unit =
    {
      count_formula = "2^L*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    order = "e-k-d"
  },
  {
    type = "technology",
    name = "artillery-shell-speed-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/artillery-speed.png"),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
        icon_mipmaps = 2,
        modifier = 1
      }
    },
    prerequisites = {"artillery", "space-science-pack"},
    unit =
    {
      count_formula = "1000+3^(L-1)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    order = "e-k-k"
  }
})

function create_follower_upgrade(level, pack1, pack2, pack3, military_pack, high_tech_pack, production_pack, count, addition)
  local result =
  {
    type = "technology",
    name = "follower-robot-count-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_followers("__base__/graphics/technology/follower-robots.png"),
    effects =
    {
      {
        type = "maximum-following-robots-count",
        modifier = addition
      }
    },
    prerequisites = {"defender"},
    unit =
    {
      ingredients = {},
      time = 30
    },
    upgrade = true,
    order = "e-p-b-c"
  }
  result.name = "follower-robot-count-" .. level
  if level == 1 then
    result.prerequisites = {"defender"}
  else
    result.prerequisites = {"follower-robot-count-" .. (level - 1)}
    if level == 5 then
      result.prerequisites[#result.prerequisites + 1] = "destroyer"
    end
  end
  result.unit.count = count
  if pack1 ~= 0 then
    table.insert(result.unit.ingredients, {"automation-science-pack", pack1})
  end
  if pack2 ~= 0 then
    table.insert(result.unit.ingredients, {"logistic-science-pack", pack2})
  end
  if pack3 ~= 0 then
    table.insert(result.unit.ingredients, {"chemical-science-pack", pack3})
  end
  if military_pack ~= 0 then
    table.insert(result.unit.ingredients, {"military-science-pack", military_pack})
  end
  if high_tech_pack ~= 0 then
    table.insert(result.unit.ingredients, {"utility-science-pack", high_tech_pack})
  end
  if production_pack ~= 0 then
    table.insert(result.unit.ingredients, {"production-science-pack", production_pack})
  end
  return result
end

 data:extend(
{
  create_follower_upgrade(1, 1, 1, 0, 1, 0, 0, 200, 5),
  create_follower_upgrade(2, 1, 1, 0, 1, 0, 0, 300, 5),

  create_follower_upgrade(3, 1, 1, 1, 1, 0, 0, 400, 5),
  create_follower_upgrade(4, 1, 1, 1, 1, 0, 0, 600, 10),

  create_follower_upgrade(5, 1, 1, 1, 1, 1, 0, 800, 10),
  create_follower_upgrade(6, 1, 1, 1, 1, 1, 0, 1000, 10)
})

data:extend(
{
  {
    type = "technology",
    name = "follower-robot-count-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_followers("__base__/graphics/technology/follower-robots.png"),
    effects =
    {
      {
        type = "maximum-following-robots-count",
        modifier = 10
      }
    },
    prerequisites = {"follower-robot-count-6", "space-science-pack"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 30,
      count_formula = "100(L-6)+900"
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-p-b-c"
  },
  {
    type = "technology",
    name = "stack-inserter",
    icon = "__base__/graphics/technology/stack-inserter.png",
    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "stack-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "stack-filter-inserter"
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      }
    },
    prerequisites = {"fast-inserter", "logistics-2", "advanced-electronics"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-1",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),

    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1 -- result of 3
      }
    },
    prerequisites = {"stack-inserter"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-b"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-2",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1 -- result of 2
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1 -- result of 4
      }
    },
    prerequisites = {"inserter-capacity-bonus-1"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-c"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-3",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1 -- result of 5
      }
    },
    prerequisites = {"inserter-capacity-bonus-2"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-d"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-4",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1 -- result of 6
      }
    },
    prerequisites = {"inserter-capacity-bonus-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-e"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-5",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 2 -- result of 8
      }
    },
    prerequisites = {"inserter-capacity-bonus-4"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-f"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-6",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 2 -- result of 10
      }
    },
    prerequisites = {"inserter-capacity-bonus-5"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-g"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-7",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    icon_size = 256, icon_mipmaps = 4,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1 -- result of 3
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 2 -- result of 12
      }
    },
    prerequisites = {"inserter-capacity-bonus-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-h"
  },
  {
    type = "technology",
    name = "automation",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/automation-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "long-handed-inserter"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 10
    },
    ignore_tech_cost_multiplier = true,
    order = "a-b-a"
  },
  {
    type = "technology",
    name = "automation-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/automation-2.png",
    localised_description = {"technology-description.automation-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-2"
      }
    },
    prerequisites = {"electronics", "steel-processing", "logistic-science-pack"},
    unit =
    {
      count = 40,
      ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}},
      time = 15
    },
    order = "a-b-b"
  },
  {
    type = "technology",
    name = "electronics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/electronics.png",
    prerequisites = {"automation"},
    unit =
    {
      count = 30,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-d-a"
  },
  {
    type = "technology",
    name = "logistic-science-pack",
    localised_name = {"technology-name.logistic-science-pack"},
    localised_description = {"technology-description.logistic-science-pack"},
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/logistic-science-pack.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-science-pack"
      }
    },
    unit =
    {
      count = 75,
      ingredients = {{"automation-science-pack", 1}},
      time = 5
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "steel-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/steel-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "steel-chest"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}},
      time = 5
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "steel-axe",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/steel-axe.png",
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 1
      }
    },
    prerequisites = {"steel-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    order = "c-c-a"
  },
  {
    type = "technology",
    name = "military",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "submachine-gun"
      },
      {
        type = "unlock-recipe",
        recipe = "shotgun"
      },
      {
        type = "unlock-recipe",
        recipe = "shotgun-shell"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "e-a-a"
  },
  {
    type = "technology",
    name = "military-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "piercing-rounds-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "grenade"
      }
    },
    prerequisites = {"military", "steel-processing", "logistic-science-pack"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "e-a-b"
  },
  {
    type = "technology",
    name = "fast-inserter",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fast-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "filter-inserter"
      }
    },
    prerequisites = {"electronics"},
    unit =
    {
      count = 30,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-d-a"
  },
  {
    type = "technology",
    name = "logistics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/logistics-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "splitter"
      }
    },
    unit =
    {
      count = 20,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-f-a"
  },
  {
    type = "technology",
    name = "railway",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rail"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon"
      }
    },
    prerequisites = {"logistics-2", "engine"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-a"
  },
  {
    type = "technology",
    name = "automated-rail-transportation",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/automated-rail-transportation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "train-stop"
      }
    },
    prerequisites = {"railway"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-b"
  },
  {
    type = "technology",
    name = "rail-signals",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/rail-signals.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rail-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "rail-chain-signal"
      }
    },
    prerequisites = {"automated-rail-transportation"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-c"
  },
  {
    type = "technology",
    name = "automobilism",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/automobilism.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "car"
      }
    },
    prerequisites = {"logistics-2", "engine"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "e-b"
  },
  {
    type = "technology",
    name = "optics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/lamp.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "small-lamp"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
    },
    order = "a-h-a"
  },
  {
    type = "technology",
    name = "solar-energy",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel"
      }
    },
    prerequisites = {"optics", "electronics", "steel-processing", "logistic-science-pack"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "a-h-c"
  },
  {
    type = "technology",
    name = "heavy-armor",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/heavy-armor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heavy-armor"
      }
    },
    prerequisites = {"military", "steel-processing"},
    unit =
    {
      count = 30,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    order = "g-a-b"
  },
  {
    type = "technology",
    name = "gun-turret",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/gun-turret.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gun-turret"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 10
    },
    order = "a-j-a"
  },

  {
    type = "technology",
    name = "research-speed-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.2
      }
    },
    prerequisites = {"automation-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-m-a"
  },
  {
    type = "technology",
    name = "research-speed-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.3
      }
    },
    prerequisites = {"research-speed-1"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-m-b"
  },
  {
    type = "technology",
    name = "electric-energy-distribution-1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-electric-pole"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole"
      }
    },
    prerequisites = {"electronics", "steel-processing", "logistic-science-pack"},
    unit =
    {
      count = 120,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-e-b"
  },
  {
    type = "technology",
    name = "advanced-material-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-furnace"
      }
    },
    prerequisites = {"steel-processing", "logistic-science-pack"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-c-a"
  },
  {
    type = "technology",
    name = "concrete",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/concrete.png",
    prerequisites = {"advanced-material-processing", "automation-2"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "hazard-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "refined-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "refined-hazard-concrete"
      }
    },
    order = "c-c-c"
  },
  {
    type = "technology",
    name = "engine",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/engine.png",
    prerequisites = {"steel-processing", "logistic-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "engine-unit"
      }
    },
    order = "b-a"
  },
  {
    type = "technology",
    name = "landfill",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/landfill.png",
    prerequisites = {"logistic-science-pack"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "landfill"
      }
    },
    order = "b-d"
  },
  {
    type = "technology",
    name = "logistics-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/logistics-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-splitter"
      }
    },
    prerequisites = {"logistics", "logistic-science-pack"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "a-f-b"
  },
  {
    type = "technology",
    name = "toolbelt",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/toolbelt.png"),
    prerequisites = {"logistic-science-pack"},
    effects =
    {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-m"
  },
  {
    type = "technology",
    name = "stone-wall",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/stone-wall.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "stone-wall"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 10
    },
    order = "a-k-a"
  },
  {
    type = "technology",
    name = "gate",
    localised_description = {"technology-description.gates"}, -- i could rename locale key to "gate" but translators will complain
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/gate.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gate"
      }
    },
    prerequisites = {"stone-wall", "military-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "a-l-a"
  },
  {
    type = "technology",
    name = "chemical-science-pack",
    localised_name = {"technology-name.chemical-science-pack"},
    localised_description = {"technology-description.chemical-science-pack"},
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/chemical-science-pack.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-science-pack"
      }
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 10
    },
    prerequisites = {"advanced-electronics", "sulfur-processing"},
    order = "c-a"
  },
  {
    type = "technology",
    name = "military-science-pack",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/military-science-pack.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "military-science-pack"
      }
    },
    unit =
    {
      count = 30,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    prerequisites = {"military-2", "stone-wall"},
    order = "c-a"
  },
  {
    type = "technology",
    name = "production-science-pack",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/production-science-pack.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "production-science-pack"
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    prerequisites = {"productivity-module", "advanced-material-processing-2", "railway"},
    order = "c-a"
  },
  {
    type = "technology",
    name = "utility-science-pack",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/utility-science-pack.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "utility-science-pack"
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    prerequisites = {"robotics", "advanced-electronics-2", "low-density-structure"},--, "chemical-science-pack"},
    order = "c-a"
  },
  {
    type = "technology",
    name = "space-science-pack",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/space-science-pack.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "satellite"
      }
    },
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    prerequisites = {"rocket-silo", "electric-energy-accumulators", "solar-energy"},
    order = "c-a"
  },
  {
    type = "technology",
    name = "military-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "slowdown-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "combat-shotgun"
      }
    },
    prerequisites = {"chemical-science-pack", "military-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-a-c"
  },
  {
    type = "technology",
    name = "military-4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "piercing-shotgun-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "cluster-grenade"
      }
    },
    prerequisites = {"military-3", "utility-science-pack", "explosives"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45
    },
    order = "e-a-e"
  },
  {
    type = "technology",
    name = "uranium-ammo",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/uranium-ammo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-rounds-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-cannon-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "explosive-uranium-cannon-shell"
      }
    },
    prerequisites = {"uranium-processing", "military-4", "tank"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45
    },
    order = "e-a-b"
  },
  {
    type = "technology",
    name = "atomic-bomb",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/atomic-bomb.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "atomic-bomb"
      }
    },
    prerequisites = {"military-4", "kovarex-enrichment-process", "rocket-control-unit", "rocketry"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45
    },
    order = "e-a-b"
  },

  {
    type = "technology",
    name = "automation-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/automation-3.png",
    localised_description = {"technology-description.automation-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-3"
      }
    },
    prerequisites = {"speed-module", "production-science-pack"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    order = "a-b-c"
  },
  {
    type = "technology",
    name = "explosives",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/explosives.png",
    prerequisites = {"sulfur-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "explosives"
      }
    },
    order = "a-e-d"
  },
  {
    type = "technology",
    name = "cliff-explosives",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/cliff-explosives.png",
    prerequisites = {"explosives", "military-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cliff-explosives"
      }
    },
    order = "z-c-d"
  },
  {
    type = "technology",
    name = "flammables",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/flammables.png",
    prerequisites = {"oil-processing"},-- "military-science-pack"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-a"
  },
  {
    type = "technology",
    name = "land-mine",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/land-mine.png",
    localised_description = {"technology-description.land-mine"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "land-mine"
      }
    },
    prerequisites = {"explosives", "military-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-e"
  },
  {
    type = "technology",
    name = "flamethrower",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/flamethrower.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flamethrower"
      },
      {
        type = "unlock-recipe",
        recipe = "flamethrower-ammo"
      },
      {
        type = "unlock-recipe",
        recipe = "flamethrower-turret"
      }
    },
    prerequisites = {"flammables", "military-science-pack"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-b"
  },
  {
    type = "technology",
    name = "advanced-electronics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/advanced-electronics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-circuit"
      }
    },
    prerequisites = {"plastics"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-d-b"
  },
  {
    type = "technology",
    name = "advanced-electronics-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/advanced-electronics-2.png",
    prerequisites = {"chemical-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "processing-unit"
      }
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "a-d-c"
  },

  {
    type = "technology",
    name = "fluid-wagon",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fluid-wagon.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon"
      }
    },
    prerequisites = {"railway", "fluid-handling"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-a-b"
  },

  {
    type = "technology",
    name = "braking-force-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"railway", "chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "b-f-a"
  },
  {
    type = "technology",
    name = "braking-force-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {"braking-force-1"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "b-f-b"
  },
  {
    type = "technology",
    name = "braking-force-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {"braking-force-2"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "b-f-c"
  },
  {
    type = "technology",
    name = "braking-force-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {"braking-force-3"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "b-f-d"
  },
  {
    type = "technology",
    name = "braking-force-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {"braking-force-4"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 35
    },
    upgrade = true,
    order = "b-f-e"
  },
  {
    type = "technology",
    name = "braking-force-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {"braking-force-5"},
    unit =
    {
      count = 550,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45
    },
    upgrade = true,
    order = "b-f-f"
  },
  {
    type = "technology",
    name = "braking-force-7",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {"braking-force-6"},
    unit =
    {
      count = 650,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "b-f-g"
  },
  {
    type = "technology",
    name = "tank",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tank"
      },
      {
        type = "unlock-recipe",
        recipe = "cannon-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "explosive-cannon-shell"
      }
    },
    prerequisites = {"automobilism", "military-3", "explosives"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-c"
  },
  {
    type = "technology",
    name = "logistics-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/logistics-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "express-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "express-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "express-splitter"
      }
    },
    prerequisites = {"production-science-pack", "lubricant"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 15
    },
    order = "a-f-c"
  },
  {
    type = "technology",
    name = "laser",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser.png",
    prerequisites = {"optics", "battery", "chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "a-h-b"
  },
  {
    type = "technology",
    name = "rocketry",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/rocketry.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-launcher"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket"
      }
    },
    prerequisites = {"explosives", "flammables", "military-science-pack"},
    unit =
    {
      count = 120,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 15
    },
    order = "e-g"
  },
  {
    type = "technology",
    name = "explosive-rocketry",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/explosive-rocketry.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "explosive-rocket"
      }
    },
    prerequisites = {"rocketry", "military-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-h"
  },
  {
    type = "technology",
    name = "modular-armor",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/armor-making.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "modular-armor"
      }
    },
    prerequisites = {"heavy-armor", "advanced-electronics"},
    unit =
    {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 30
    },
    order = "g-a-c"
  },
  {
    type = "technology",
    name = "power-armor",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor"
      }
    },
    prerequisites = {"modular-armor", "electric-engine", "advanced-electronics-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "g-c-a"
  },
  {
    type = "technology",
    name = "power-armor-mk2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk2"
      }
    },
    prerequisites = {"power-armor", "military-4", "speed-module-2", "effectivity-module-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "g-c-b"
  },
  {
    type = "technology",
    name = "laser-turret",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/laser-turret.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret"
      }
    },
    prerequisites = {"laser", "military-science-pack"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "a-j-b"
  },
  {
    type = "technology",
    name = "robotics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/robotics.png",
    prerequisites = {"electric-engine", "battery"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame"
      }
    },
    order = "c-i"
  },
  {
    type = "technology",
    name = "rocket-fuel",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/rocket-fuel.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-fuel"
      }
    },
    prerequisites = {"flammables", "advanced-oil-processing"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 45
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "low-density-structure",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/low-density-structure.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "low-density-structure"
      }
    },
    prerequisites = {"advanced-material-processing", "chemical-science-pack"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 45
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "rocket-control-unit",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/rocket-control-unit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-control-unit"
      }
    },
    prerequisites = {"utility-science-pack", "speed-module"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "rocket-silo",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/rocket-silo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-silo"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-part"
      }
    },
    prerequisites = {"concrete", "speed-module-3", "productivity-module-3", "rocket-fuel", "rocket-control-unit"},
    unit =
    {
      count = 1000,

      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "research-speed-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.4
      }
    },
    prerequisites = {"research-speed-2"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-m-c"
  },
  {
    type = "technology",
    name = "research-speed-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.5
      }
    },
    prerequisites = {"research-speed-3"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-m-d"
  },
  {
    type = "technology",
    name = "research-speed-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.5
      }
    },
    prerequisites = {"research-speed-4"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-m-d"
  },
  {
    type = "technology",
    name = "research-speed-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.6
      }
    },
    prerequisites = {"research-speed-5"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-m-d"
  },
  {
    type = "technology",
    name = "electric-energy-distribution-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "substation"
      }
    },
    prerequisites = {"electric-energy-distribution-1", "chemical-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 45
    },
    order = "c-e-c"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "accumulator"
      }
    },
    prerequisites = {"electric-energy-distribution-1", "battery"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "advanced-material-processing-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/advanced-material-processing-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace"
      }
    },
    prerequisites = {"advanced-material-processing", "chemical-science-pack"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-c-b"
  },
  {
    type = "technology",
    name = "effect-transmission",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/effect-transmission.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "beacon"
      }
    },
    prerequisites = {"advanced-electronics-2", "production-science-pack"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "lubricant",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/lubricant.png",
    prerequisites = {"advanced-oil-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lubricant"
      }
    },
    order = "b-b"
  },
  {
    type = "technology",
    name = "electric-engine",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/electric-engine.png",
    prerequisites = {"lubricant"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-engine-unit"
      }
    },
    order = "b-b"
  },
  {
    type = "technology",
    name = "battery",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/battery.png",
    prerequisites = {"sulfur-processing"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery"
      }
    },
    order = "b-c"
  },
  {
    type = "technology",
    name = "construction-robotics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "construction-robot"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60 * 24 * 7
      }
    },
    prerequisites = {"robotics"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-a"
  },
  {
    type = "technology",
    name = "logistic-robotics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot"
      },
      {
        type = "character-logistic-requests",
        modifier = true
      },
      {
        type = "character-logistic-trash-slots",
        modifier = 30
      }
    },
    prerequisites = {"robotics"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-c"
  },
  {
    type = "technology",
    name = "logistic-system",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/logistic-system.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-buffer"
      }
    },
    prerequisites = { "utility-science-pack","logistic-robotics" },
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d"
  },
  {
    type = "technology",
    name = "worker-robots-speed-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 0.35
      }
    },
    prerequisites = {"robotics"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-f-a"
  },
  {
    type = "technology",
    name = "worker-robots-speed-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 0.4
      }
    },
    prerequisites = {"worker-robots-speed-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-f-b"
  },
  {
    type = "technology",
    name = "worker-robots-speed-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 0.45
      }
    },
    prerequisites = {"worker-robots-speed-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-c"
  },
  {
    type = "technology",
    name = "worker-robots-speed-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 0.55
      }
    },
    prerequisites = {"worker-robots-speed-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-d"
  },
  {
    type = "technology",
    name = "worker-robots-speed-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 0.65
      }
    },
    prerequisites = {"worker-robots-speed-4"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-speed-6",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 0.65
      }
    },
    prerequisites = {"worker-robots-speed-5", "space-science-pack"},
    unit =
    {
      count_formula = "2^(L-6)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-storage-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"robotics"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-g-a"
  },
  {
    type = "technology",
    name = "worker-robots-storage-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-1"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-b"
  },
  {
    type = "technology",
    name = "worker-robots-storage-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-2"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "energy-shield-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/energy-shield-equipment.png"),
    prerequisites = {"solar-panel-equipment", "military-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-equipment"
      }
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 15
    },
    order = "g-e-a"
  },
  {
    type = "technology",
    name = "night-vision-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/night-vision-equipment.png"),
    prerequisites = {"solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "night-vision-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "g-g"
  },
  {
    type = "technology",
    name = "belt-immunity-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/belt-immunity-equipment.png"),
    prerequisites = {"solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "belt-immunity-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "g-g-g"
  },
  {
    type = "technology",
    name = "energy-shield-mk2-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/energy-shield-mk2-equipment.png"),
    prerequisites = {"energy-shield-equipment", "military-3", "low-density-structure", "power-armor"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk2-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "g-e-b"
  },
  {
    type = "technology",
    name = "battery-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/battery-equipment.png"),
    prerequisites = {"battery", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "g-i-a"
  },
  {
    type = "technology",
    name = "battery-mk2-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/battery-mk2-equipment.png"),
    prerequisites = {"battery-equipment", "low-density-structure", "power-armor"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk2-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
      time = 30
    },
    order = "g-i-b"
  },
  {
    type = "technology",
    name = "solar-panel-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/solar-panel-equipment.png"),
    prerequisites = {"modular-armor", "solar-energy"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "g-k"
  },
  {
    type = "technology",
    name = "personal-laser-defense-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-laser-defense-equipment.png"),
    prerequisites = {"laser-turret", "military-3", "low-density-structure", "power-armor", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "g-m"
  },
  {
    type = "technology",
    name = "discharge-defense-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/discharge-defense-equipment.png"),
    prerequisites = {"laser-turret", "military-3", "power-armor", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "discharge-defense-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "discharge-defense-remote"
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "g-o"
  },
  {
    type = "technology",
    name = "fusion-reactor-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/fusion-reactor-equipment.png"),
    prerequisites = {"utility-science-pack", "power-armor", "military-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "g-l"
  },
  {
    type = "technology",
    name = "exoskeleton-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/exoskeleton-equipment.png"),
    prerequisites = {"advanced-electronics-2", "electric-engine", "solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "exoskeleton-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
      time = 30
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "personal-roboport-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-equipment"
      }
    },
    prerequisites = { "construction-robotics", "solar-panel-equipment"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zz"
  },
  {
    type = "technology",
    name = "personal-roboport-mk2-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-mk2-equipment"
      }
    },
    prerequisites = { "personal-roboport-equipment", "utility-science-pack" },
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d-zz"
  },
  {
    type = "technology",
    name = "fluid-handling",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/fluid-handling.png",
    prerequisites = {"automation-2", "engine"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "pump"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-barrel"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 15
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "oil-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/oil-gathering.png",
    prerequisites = {"fluid-handling"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "basic-oil-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-petroleum-gas"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 30
    },
    order = "d-a"
  },
  {
    type = "technology",
    name = "advanced-oil-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/oil-processing.png",
    prerequisites = {"chemical-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-oil-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-oil-cracking"
      },
      {
        type = "unlock-recipe",
        recipe = "light-oil-cracking"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-heavy-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-light-oil"
      }
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "d-b"
  },
  {
    type = "technology",
    name = "coal-liquefaction",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/coal-liquefaction.png",
    prerequisites = {"advanced-oil-processing", "production-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "coal-liquefaction"
      }
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "d-c"
  },
  {
    type = "technology",
    name = "sulfur-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/sulfur-processing.png",
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sulfuric-acid"
      },
      {
        type = "unlock-recipe",
        recipe = "sulfur"
      }
    },
    unit =
    {
      count = 150,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 30
    },
    order = "d-d"
  },
  {
    type = "technology",
    name = "plastics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/plastics.png",
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "plastic-bar"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 30
    },
    order = "d-e"
  },

    {
    type = "technology",
    name = "modules",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"advanced-electronics"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "speed-module",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/speed-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-c-a"
  },
  {
    type = "technology",
    name = "speed-module-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/speed-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-2"
      }
    },
    prerequisites = {"speed-module", "advanced-electronics-2"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-c-b"
  },
  {
    type = "technology",
    name = "speed-module-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/speed-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-3"
      }
    },
    prerequisites = {"speed-module-2", "production-science-pack"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "productivity-module",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/productivity-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-e-a"
  },
  {
    type = "technology",
    name = "productivity-module-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/productivity-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-2"
      }
    },
    prerequisites = {"productivity-module", "advanced-electronics-2"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-e-b"
  },
  {
    type = "technology",
    name = "productivity-module-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/productivity-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-3"
      }
    },
    prerequisites = {"productivity-module-2", "production-science-pack"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-e-c"
  },
  {
    type = "technology",
    name = "effectivity-module",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/effectivity-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-g-a"
  },
  {
    type = "technology",
    name = "effectivity-module-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/effectivity-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-2"
      }
    },
    prerequisites = {"effectivity-module", "advanced-electronics-2"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-g-b"
  },
  {
    type = "technology",
    name = "effectivity-module-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/effectivity-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-3"
      }
    },
    prerequisites = {"effectivity-module-2", "production-science-pack"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-g-c"
  },
  {
    type = "technology",
    name = "defender",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/defender.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "defender-capsule"
      },
      {
        type = "maximum-following-robots-count",
        modifier = 4
      }
    },
    prerequisites = {"military-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-p-a"
  },
  {
    type = "technology",
    name = "distractor",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/distractor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "distractor-capsule"
      }
    },
    prerequisites = {"defender", "military-3", "laser"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-p-b-a"
  },
  {
    type = "technology",
    name = "destroyer",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/destroyer.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "destroyer-capsule"
      }
    },
    prerequisites = {"military-4", "distractor", "speed-module"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "e-p-b-b"
  }
})

data:extend(
{
  {
    type = "technology",
    name = "uranium-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/uranium-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-fuel-cell"
      }
    },
    prerequisites = {"chemical-science-pack", "concrete"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30,
      count = 200
    },
    order = "e-p-b-c"
  },
  {
    type = "technology",
    name = "nuclear-power",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-turbine"
      }
    },
    prerequisites = {"uranium-processing"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30,
      count = 800
    },
    order = "e-p-b-c"
  },
  {
    type = "technology",
    name = "kovarex-enrichment-process",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/kovarex-enrichment-process.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "kovarex-enrichment-process"
      },
      {
        type = "unlock-recipe",
        recipe = "nuclear-fuel"
      }
    },
    prerequisites = { "production-science-pack", "uranium-processing", "rocket-fuel" },
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30,
      count = 1500
    },
    order = "e-p-b-c"
  },
  {
    type = "technology",
    name = "nuclear-fuel-reprocessing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/nuclear-fuel-reprocessing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-fuel-reprocessing"
      }
    },
    prerequisites = {"nuclear-power", "production-science-pack"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30,
      count = 50
    },
    order = "e-p-b-c"
  }
}
)

data:extend(
{
  {
    type = "technology",
    name = "mining-productivity-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"advanced-electronics"},
    unit =
    {
      count = "250",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "mining-productivity-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"mining-productivity-1"},
    unit =
    {
      count = "500",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "mining-productivity-3",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"mining-productivity-2"},
    unit =
    {
      count = "1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "mining-productivity-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.1
      }
    },
    prerequisites = {"mining-productivity-3", "space-science-pack"},
    unit =
    {
      count_formula = "2500*(L - 3)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "artillery",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/artillery.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "artillery-wagon"
      },
      {
        type = "unlock-recipe",
        recipe = "artillery-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "artillery-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "artillery-targeting-remote"
      }
    },
    prerequisites = {"military-4", "tank"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30,
      count = 2000
    },
    order = "d-e-f"
  },
  {
    type = "technology",
    name = "spidertron",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/spidertron.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "spidertron"
      },
      {
        type = "unlock-recipe",
        recipe = "spidertron-remote"
      }
    },
    prerequisites = {"military-4", "exoskeleton-equipment", "fusion-reactor-equipment", "rocketry", "rocket-control-unit", "effectivity-module-3" },
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30,
      count = 2500
    },
    order = "d-e-g"
  },
  {
    type = "technology",
    name = "circuit-network",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/circuit-network.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "red-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "green-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "arithmetic-combinator"
      },
      {
        type = "unlock-recipe",
        recipe = "decider-combinator"
      },
      {
        type = "unlock-recipe",
        recipe = "constant-combinator"
      },
      {
        type = "unlock-recipe",
        recipe = "power-switch"
      },
      {
        type = "unlock-recipe",
        recipe = "programmable-speaker"
      }
    },
    prerequisites = {"electronics", "logistic-science-pack"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 15
    },
    order = "a-d-d"
  }
}
)
