require "util"

-- this is both in demo and alpha
require("prototypes.entity.demo-entities")
require("prototypes.ammo-category.categories")
require("prototypes.entity.demo-mining-drill")
require("prototypes.entity.demo-particles")
require("prototypes.entity.demo-projectiles")
require("prototypes.entity.demo-resources")
require("prototypes.entity.demo-turrets")
require("prototypes.item.demo-ammo")
require("prototypes.item.demo-armor")
require("prototypes.item.demo-gun")
require("prototypes.item.demo-item")
require("prototypes.item.demo-mining-tools")
require("prototypes.item.demo-turret")
require("prototypes.item.demo-item-groups")
require("prototypes.rail-category.categories")
require("prototypes.recipe.demo-furnace-recipe")
require("prototypes.recipe.demo-recipe")
require("prototypes.recipe.demo-turret")
require("prototypes.recipe-category.categories")
require("prototypes.tile.noise-layers")
require("prototypes.autoplace-controls")
require("prototypes.map-settings")
require("prototypes.tile.tiles")
require("prototypes.damage-type")

if not data.isdemo then
  require("prototypes.entity.entities")
  require("prototypes.entity.projectiles")
  require("prototypes.entity.turrets")
  require("prototypes.entity.enemies")
  require("prototypes.item.capsule")
  require("prototypes.item.ammo")
  require("prototypes.item.armor")
  require("prototypes.item.equipment")
  require("prototypes.item.gun")
  require("prototypes.item.item")
  require("prototypes.item.item-groups")
  require("prototypes.item.mining-tools")
  require("prototypes.item.module")
  require("prototypes.item.turret")
  require("prototypes.recipe.ammo")
  require("prototypes.recipe.capsule")
  require("prototypes.recipe.equipment")
  require("prototypes.recipe.furnace-recipe")
  require("prototypes.recipe.inserter")
  require("prototypes.recipe.module")
  require("prototypes.recipe.recipe")
  require("prototypes.recipe.turret")
  require("prototypes.technology.equipment")
  require("prototypes.technology.logistic-robot")
  require("prototypes.technology.combat-robots")
  require("prototypes.technology.module")
  require("prototypes.technology.technology")
  require("prototypes.technology.bullet-upgrades")
  require("prototypes.technology.shotgun-shell-upgrades")
  require("prototypes.technology.laser-turret-upgrades")
  require("prototypes.technology.rocket-upgrades")
  require("prototypes.equipment.equipment")
end
