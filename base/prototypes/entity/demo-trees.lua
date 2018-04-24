local autoplace_utils = require("autoplace_utils")
local biomes = autoplace_utils.biomes

local function autoplace_settings(rectangles, more)
  local ret =
  {
    sharpness = 0.4,
    order = "a[tree]-b[forest]",
    max_probability = 0.9,
    random_probability_penalty = 1e-3;
    peaks =
    {
      {
        influence = -0.09
      },
      {
        influence = 0.4,
        noise_layer = "trees",
        noise_persistence = 0.5,
        noise_octaves_difference = -1
      }
    },
  }

  autoplace_utils.peaks(rectangles, ret.peaks, 0.3)

  if more ~= nil then
    for k,v in pairs(more) do ret[k] = v end
  end

  return ret
end

local function dead_trees_autoplace(relative_probability)
  return
  {
    max_probability = 1e-2 * relative_probability,
    sharpness = 0.6,
    order = "a[tree]-b[forest]",
    random_probability_penalty = 1e-3,
    peaks = autoplace_utils.peaks({{{35, 0.3}, {-5, 0}, -0.3}},
                                  {
                                    {
                                      influence = 0.25,
                                    },
                                    {
                                      noise_layer = "trees",
                                      noise_persistence = 0.5,
                                      noise_octaves_difference = -1
                                    }
                                  })
  }
end


local tree_types =
{
  { -- tree-01
    { -- a
      trunk = { width = 215, height = 146, shift = {1.5, -0.7}},
      leaves = { width = 102, height = 115, shift = {-0.15, -1.75}}
    },
    { -- b
      trunk = { width = 221, height = 147, shift = {2.0625, -0.7125}},
      leaves = { width = 89, height = 108, shift = {-0.03125, -1.60312}}
    },
    { -- c
      trunk = { width = 191, height = 141, shift = {2.03125, -0.55625}},
      leaves = { width = 95, height = 105, shift = {0.03125, -1.43125}}
    },
    { -- d
      trunk = { width = 208, height = 149, shift = {2.078125, -0.65625}},
      leaves = { width = 103, height = 106, shift = {0.21875, -1.48438}}
    },
    { -- e
      trunk = { width = 215, height = 140, shift = {2.25, -0.64062}},
      leaves = { width = 106, height = 110, shift = {0.35938, -2.23438}}
    },
    { -- f
      trunk = { width = 216, height = 139, shift = {1.796875, -0.25}},
      leaves = { width = 96, height = 101, shift = {-0.14062, -0.96875}}
    },
    { -- g
      trunk = { width = 213, height = 148, shift = {1.21875, -0.32812}},
      leaves = { width = 97, height = 119, shift = {-0.71875, -1.09375}}
    },
    { -- h
      trunk = { width = 220, height = 142, shift = {1.296875, -0.57812}},
      leaves = { width = 109, height = 108, shift = {-0.78125, -1.39062}}
    },
    { -- i
      trunk = { width = 205, height = 160, shift = {1.78125, -0.23438}},
      leaves = { width = 88, height = 122, shift = {-0.14062, -1.01562}}
    },
    { -- j
      trunk = { width = 163, height = 115, shift = {1.5625, -0.46875}},
      leaves = { width = 88, height = 122, shift = {-0.01562, -1.17188}}
    }
  },
  { -- tree-02
    { -- a
      trunk = { width = 227, height = 171, shift = {1.95313, -0.62188}},
      leaves = { width = 95, height = 130, shift = {-0.109375, -1.325}}
    },
    { -- b
      trunk = { width = 227, height = 193, shift = {1.665625, -0.95312}},
      leaves = { width = 97, height = 143, shift = {-0.36563, -1.796875}}
    },
    { -- c
      trunk = { width = 251, height = 202, shift = {2.309375, -1.19375}},
      leaves = { width = 106, height = 154, shift = {0.04375, -2.00625}}
    },
    { -- d
      trunk = { width = 271, height = 187, shift = {2.83438, -0.953125}},
      leaves = { width = 119, height = 154, shift = {0.49062, -1.5}}
    },
    { -- e
      trunk = { width = 258, height = 192, shift = {2.25, -0.78125}},
      leaves = { width = 104, height = 144, shift = {-0.125, -1.59375}}
    }
  },
  { -- tree-03
    { -- a
      trunk = { width = 246, height = 157, shift = {2.48438, -1.375}},
      leaves = { width = 119, height = 98, shift = {0.40625, -2.35938}}
    },
    { -- b
      trunk = { width = 164, height = 123, shift = {1.79688, -1.1875}},
      leaves = { width = 79, height = 73, shift = {0.40625, -2.03125}}
    },
    { -- c
      trunk = { width = 195, height = 169, shift = {2.09375, -1.5625}},
      leaves = { width = 94, height = 90, shift = {0.421875, -2.85938}}
    },
    { -- d
      trunk = { width = 239, height = 169, shift = {2.25, -1.625}},
      leaves = { width = 102, height = 84, shift = {0.015625, -3.04688}}
    },
    { -- e
      trunk = { width = 260, height = 143, shift = {2.07813, -1.5}},
      leaves = { width = 118, height = 83, shift = {-0.203125, -2.5}}
    },
    { -- f
      trunk = { width = 214, height = 151, shift = {1.73438, -1.21875}},
      leaves = { width = 94, height = 100, shift = {-0.265625, -2.07813}}
    },
    { -- g
      trunk = { width = 177, height = 151,shift = {1.46875, -1.09375}},
      leaves = { width = 78, height = 106, shift = {-0.171875, -1.85938}}
    }
  },
  { -- tree-04
    { -- a
      trunk = { width = 255, height = 170, shift = {2.45313, -1.03125}},
      leaves = { width = 99, height = 127,  shift = {0.015625, -1.85938}}
    },
    { -- b
      trunk = { width = 232, height = 168, shift = {2.1875, -0.90625}},
      leaves = { width = 106, height = 140, shift = {0.125, -1.59375}}
    },
    { -- c
      trunk = { width = 265, height = 176, shift = {2.89063, -0.9375}},
      leaves = { width = 99, height = 125, shift = {0.078125, -1.82813}}
    },
    { -- d
      trunk = { width = 273, height = 173, shift = {2.76563, -0.92188}},
      leaves = { width = 100, height = 125, shift = {-0.1875, -1.82813}}
    },
    { -- e
      trunk = { width = 246, height = 183, shift = {2, -1.07813}},
      leaves = { width = 109, height = 136, shift = {-0.234375, -1.875}}
    },
    { -- f
      trunk = { width = 260, height = 189, shift = {2.71875, -1.07813}},
      leaves = { width = 101, height = 123, shift = {0.140625, -2.20313}}
    },
    { -- g
      trunk = { width = 261, height = 177, shift = {2.57813, -0.64063}},
      leaves = { width = 99, height = 116, shift = {-0.015625, -1.65625}}
    },
    { -- h
      trunk = { width = 253, height = 170,  shift = {2.42188, -0.59375}},
      leaves = { width = 103, height = 123, shift = {0.015625, -1.42188}}
    }
  },
  { -- tree-05
    { -- a
      trunk = { width = 198, height = 145, shift = {2.0625, -0.71563}},
      leaves = { width = 80, height = 104, shift = {0.15625, -1.41875}}
    },
    { -- b
      trunk = { width = 214, height = 132, shift = {1.75, -0.6375}},
      leaves = { width = 95, height = 95, shift = {-0.171875, -1.27813}}
    },
    { -- c
      trunk = { width = 220, height = 134, shift = {1.96875, -0.5125}},
      leaves = { width = 95, height = 102, shift = {-0.046875, -1.075}}
    },
    { -- d
      trunk = { width = 222, height = 157, shift = {2.25, -0.59063}},
      leaves = { width = 80, height = 116, shift = {-0.0625, -1.325}}
    },
    { -- e
      trunk = { width = 202, height = 155, shift = {2.03125, -0.59063}},
      leaves = { width = 85, height = 109, shift = {0.140625, -1.37188}}
    },
    { -- f
      trunk = { width = 197, height = 132, shift = {1.98438, -0.66875}},
      leaves = { width = 86, height = 104, shift = {0.1875, -1.16875}}
    },
    { -- g
      trunk = { width = 185, height = 140, shift = {2.14063, -0.7}},
      leaves = { width = 69, height = 108, shift = {0.265625, -1.2625}}
    },
  },
  { -- tree-06
    { -- a
      trunk = { width = 232, height = 188, shift = {2.0625, -0.78125}},
      leaves = { width = 88, height = 145, shift = {-0.0625, -1.29688}}
    },
    { -- b
      trunk = { width = 212, height = 162, shift = {1.9375, -1.15625}},
      leaves = { width = 85, height = 135, shift = {-0.046875, -1.48438}}
    },
    { -- c
      trunk = { width = 195, height = 168, shift = {0.984375, -0.6875}},
      leaves = { width = 86, height = 124, shift = {-0.78125, -1.4375}}
    },
    { -- d
      trunk = { width = 249, height = 178, shift = {2.23438, -0.9375}},
      leaves = { width = 105, height = 156, shift = {-0.109375, -1.25}}
    },
    { -- e
      trunk = { width = 181, height = 150, shift = {1.42188, -0.8125}},
      leaves = { width = 69, height = 121, shift = {-0.390625, -1.14062}}
    },
    { -- f
      trunk = { width = 188, height = 149, shift = {0.71875, -0.828125}},
      leaves = { width = 98, height = 129, shift = {-0.78125, -1.10938}}
    },
    { -- g
      trunk = { width = 198, height = 147, shift = {1.1875, -1.07812}},
      leaves = { width = 103, height = 131, shift = {-0.296875, -1.42188}}
    },
    { -- h
      trunk = { width = 189, height = 146, shift = {1.29688, -0.875}},
      leaves = { width = 88, height = 115, shift = {-0.40625, -1.23438}}
    },
  },
  { -- tree-07
    { -- a
      trunk = { width = 266, height = 179, shift = {3.125, -0.828125}},
      leaves = { width = 59, height = 129, shift = {0.046875, -1.73438}}
    },
    { -- b
      trunk = { width = 254, height = 170, shift = {1.84375, -1.53125}},
      leaves = { width = 92, height = 137, shift = {-0.90625, -2.10938}}
    },
    { -- c
      trunk = { width = 214, height = 157, shift = {1.28125, -1.73438}},
      leaves = { width = 88, height = 138, shift = {-0.8125, -2.09375}}
    },
    { -- d
      trunk = { width = 199, height = 161, shift = {2.04688, -1.95312}},
      leaves = { width = 55, height = 146, shift = {-0.296875, -2.21875}}
    },
    { -- e
      trunk = { width = 232, height = 167, shift = {2.90625, -1.98438}},
      leaves = { width = 63, height = 157, shift = {0.203125, -2.17188}}
    },
    { -- f
      trunk = { width = 254, height = 156, shift = {3.125, -1.78125}},
      leaves = { width = 81, height = 143, shift = {0.671875, -2.04688}}
    },
    { -- g
      trunk = { width = 336, height = 186, shift = {4.125, -1.5625}},
      leaves = { width = 97, height = 160, shift = {0.515625, -2.0625}}
    },
    { -- h
      trunk = { width = 254, height = 169, shift = {2.96875, -2.10938}},
      leaves = { width = 56, height = 160, shift = {0.09375, -2.34375}}
    },
    { -- i
      trunk = { width = 340, height = 219, shift = {2.875, -1.76562}},
      leaves = { width = 112, height = 173, shift = {-0.96875, -2.60938}}
    }
  },
  { -- tree-08
    { -- a
      trunk = { width = 200, height = 140, shift = {1.75, -1.0625}},
      leaves = { width = 95, height = 71, shift = {0.015625, -2.20313}}
    },
    { -- b
      trunk = { width = 214, height = 140, shift = {1.8125, -0.9375}},
      leaves = { width = 103, height = 71, shift = {0.078125, -2.14063}}
    },
    { -- c
      trunk = { width = 190, height = 136, shift = {2.0625, -1.09375}},
      leaves = { width = 76, height = 77, shift = {0.21875, -2.10938}}
    },
    { -- d
      trunk = { width = 213, height = 134, shift = {1.95313, -1.1875}},
      leaves = { width = 93, height = 81, shift = {0.015625, -2.14063}}
    },
    { -- e
      trunk = { width = 208, height = 148, shift = {1.75, -1.03125}},
      leaves = { width = 95, height = 84, shift = {-0.171875, -2.1875}}
    }
  },
  { -- tree-09
    { -- a
      trunk = { width = 244, height = 170, shift = {2.07813, -1.14063}},
      leaves = { width = 123, height = 103, shift = {0.15625, -2.28125}}
    },
    { -- b
      trunk = { width = 208, height = 150, shift = {1.67188, -1.10938}},
      leaves = { width = 99, height = 86, shift = {-0.0625, -2.14063}}
    },
    { -- c
      trunk = { width = 238, height = 167, shift = {1.76563, -1.15625}},
      leaves = { width = 113, height = 96, shift = {-0.25, -2.29688}}
    },
    { -- d
      trunk = { width = 170, height = 116, shift = {1.45313, -0.984375}},
      leaves = { width = 90, height = 64, shift = {0.140625, -1.85938}}
    },
    { -- e
      trunk = { width = 202, height = 158, shift = {1.98438, -1.20313}},
      leaves = { width = 103, height = 104, shift = {0.375, -2.07813}}
    }
  }
}

local tree_data =
{
  {
    type = 1,
    autoplace_peaks = {{{35, 1}, {25, 0.35}}},
    colors =
    {
      --green
      {r = 76, g = 93, b = 67},
      {r = 80, g = 112, b = 66},
      {r = 87, g = 124, b = 71},
      {r = 87, g = 100, b = 56},
      {r = 109, g = 127, b = 67},
      {r = 96, g = 113, b = 54},
      {r = 100, g = 115, b = 13},
    }
  },
  --[[
    type = 1,
    identifier = "brown",
    autoplace_peaks = {},
    colors =
    {
      ----brown compatible with dry grass
      {r = 162, g = 100, b = 46},
      {r = 176, g = 106, b = 46},
      {r = 178, g = 114, b = 58},
      {r = 156, g = 100, b = 52}
      {r = 121, g = 101, b = 22}--brown 1,
      {r = 123, g = 89, b = 17} --brown 2,
    }
  },]]--
  {
    type = 2,
    autoplace_peaks = {{{25, 0.7}, {10, 0.5}}},
    colors =
    {
      --green
      {r = 81, g = 126, b = 85},
      {r = 81, g = 166, b = 89},
      {r = 101, g = 191, b = 110},
      {r = 147, g = 192, b = 39},
      {r = 162, g = 222, b = 19},
      {r = 201, g = 236, b = 116},
      {r = 179, g = 199, b = 12},
      {r = 181, g = 189, b = 114},
      {r = 179, g = 199, b = 12},
      {r = 200, g = 214, b = 83},
    }
  },
  {
    type = 2,
    identifier = "red",
    autoplace_peaks = {{{25, 0.5}, {10, 0.4}}},
    autoplace_extra = { random_probability_penalty = 3e-3 },
    colors =
    {
      --red
      {r = 187, g = 76, b = 78},
      {r = 179, g = 70, b = 73},
      {r = 211, g = 84, b = 71},
      {r = 208, g = 62, b = 46},
      {r = 228, g = 86, b = 67},
      {r = 222, g = 76, b = 30},
    }
  },
  {
    type = 3,
    autoplace_peaks = {{{30, 1}, {20, 0.7}}},
    colors =
    {
      --green
      {r = 125, g = 154, b = 84},
      {r = 109, g = 134, b = 73},
      {r = 95, g = 125, b = 51},
      {r = 96, g = 132, b = 46},
      {r = 88, g = 141, b = 71},
      {r = 115, g = 142, b = 106},
      {r = 87, g = 109, b = 81},
      {r = 88, g = 112, b = 81},
      {r = 92, g = 126, b = 82},
      {r = 91, g = 111, b = 85},
      {r = 105, g = 127, b = 99},
      {r = 89, g = 124, b = 78},
    }
  },
  {
    type = 4,
    autoplace_peaks = {{{20, 0.8}, {5, 0.4}}},
    colors =
    {
      --green
      {r = 125, g = 154, b = 84},
      {r = 109, g = 134, b = 73},
      {r = 95, g = 125, b = 51},
      {r = 96, g = 132, b = 46},
      {r = 88, g = 141, b = 71},
      {r = 115, g = 142, b = 106},
      {r = 87, g = 109, b = 81},
      {r = 88, g = 112, b = 81},
      {r = 92, g = 126, b = 82},
      {r = 91, g = 111, b = 85},
      {r = 105, g = 127, b = 99},
      {r = 89, g = 124, b = 78},
    }
  },
  {
    type = 5,
    autoplace_peaks = {{{20, 0.8}, {5, 0.4}}},
    colors =
    {
      --green/yellow/brownish
      {r = 191, g = 181, b = 95},
      {r = 223, g = 209, b = 94},
      {r = 218, g = 201, b = 53},
      {r = 215, g = 197, b = 49},
      {r = 233, g = 212, b = 39},
      {r = 232, g = 216, b = 86},
      {r = 241, g = 247, b = 80},
      {r = 224, g = 228, b = 105},
    }
  },
  {
    type = 6,
    autoplace_peaks = {{{35, 0.15}, {10, 0.05}, 0.19}},
    autoplace_extra = { max_probability = 0.3 },
    colors =
    {
      --green
      {r = 178, g = 168, b = 114},
      {r = 152, g = 140, b = 73},
      {r = 174, g = 170, b = 108},
      {r = 188, g = 181, b = 77},
      {r = 221, g = 215, b = 111},
      {r = 219, g = 212, b = 94},
      {r = 232, g = 225, b = 120},
      {r = 192, g = 185, b = 7},
      {r = 159, g = 153, b = 60},
    }
  },
  {
    type = 6,
    identifier = "brown",
    autoplace_peaks = {{{35, 0.2}, {10, 0.05}, 0.2}},
    autoplace_extra = { max_probability = 0.3 },
    colors =
    {
      --brownish-orange-light
      {r = 215, g = 170, b = 107},
      {r = 241, g = 176, b = 85},
      {r = 227, g = 138, b = 60},
      {r = 251, g = 158, b = 76},
      {r = 207, g = 145, b = 58},
      {r = 249, g = 177, b = 92},
      {r = 253, g = 155, b = 0},
      --{r = 213, g = 145, b = 41},
      --{r = 255, g = 163, b = 17},
      --{r = 220, g = 185, b = 116},
      --{r = 220, g = 160, b = 116},
      --{r = 208, g = 131, b = 74},
      --{r = 199, g = 102, b = 30},
      --{r = 233, g = 130, b = 55},
      --{r = 179, g = 88, b = 48},
      --{r = 198, g = 142, b = 77},
      --{r = 156, g = 100, b = 52},
      --{r = 207, g = 169, b = 123},
    }
  },
  {
    type = 7,
    autoplace_peaks = {{{35, 0.25}, {5, 0.15}, 0.21}},
    autoplace_extra = { max_probability = 0.3495 },
    colors =
    {
      --yellow/brownish-almost-green
      {r = 203, g = 140, b = 51},
      {r = 208, g = 155, b = 79},
      {r = 189, g = 175, b = 53},
      {r = 217, g = 206, b = 109},
      {r = 246, g = 231, b = 108},
      {r = 215, g = 206, b = 126},
      {r = 202, g = 171, b = 95},
      {r = 227, g = 182, b = 76},
      {r = 206, g = 157, b = 40},
      {r = 230, g = 173, b = 37},
      {r = 247, g = 223, b = 88},
      {r = 205, g = 186, b = 81},
    }
  },
  {
    type = 8,
    autoplace_peaks = {{{0.3, 10}, {0, 0}}},
    colors =
    {
      --green-yellow-for-desert
      {r = 216, g = 234, b = 153},
      {r = 203, g = 229, b = 113},
      {r = 195, g = 228, b = 82},
      {r = 241, g = 247, b = 150},
      {r = 251, g = 249, b = 88},
      {r = 237, g = 232, b = 109},
      {r = 219, g = 251, b = 120},
    }
  },
  {
    type = 8,
    identifier = "brown",
    autoplace_peaks = {{{0.1, 0}, {-10, 0}}},
    colors =
    {
      -- orange / brownish-light
      {r = 225, g = 197, b = 131},
      {r = 220, g = 189, b = 116},
      {r = 246, g = 189, b = 122},
      {r = 237, g = 153, b = 98},
    }
  },
  {
    type = 8,
    identifier = "red",
    autoplace_peaks = {{{0.3, 0}, {-10, 0.1}}},
    colors =
    {
      --reddish
      {r = 205, g = 89, b = 12},
      {r = 251, g = 120, b = 120},
      {r = 250, g = 115, b = 115},
      {r = 213, g = 116, b = 121},
    }
  },
  {
    type = 9,
    autoplace_peaks = {{{35, 0.4}, {25, 0.3}, 0.21}},
    autoplace_extra = { max_probability = 0.5 },
    colors =
    {
      --green-for-dry-grass
      {r = 141, g = 183, b = 125},
      {r = 135, g = 176, b = 105},
      {r = 150, g = 185, b = 125},
      {r = 159, g = 192, b = 100},
      {r = 179, g = 178, b = 99},
      {r = 204, g = 203, b = 106},
      {r = 184, g = 194, b = 76},
    }
  },
  {
    type = 9,
    identifier = "brown",
    autoplace_peaks = {{{35, 0.25}, {15, 0.15}, 0.21}},
    autoplace_extra = { max_probability = 0.35 },
    colors =
    {
      -- greenish / brownish/ reddish -light- for desert
      {r = 194, g = 162, b = 76},
      {r = 219, g = 179, b = 70},
      {r = 178, g = 156, b = 95},
      {r = 194, g = 164, b = 84},
      {r = 159, g = 133, b = 62},
      {r = 177, g = 140, b = 87},
      {r = 217, g = 129, b = 99},
    }
  },
  {
    type = 9,
    identifier = "red",
    autoplace_peaks = {{{25, 0.25}, {5, 0.15}, 0.21}},
    autoplace_extra = { max_probability = 0.3495 },
    colors =
    {
      --red - for green-grass
      {r = 196, g = 91, b = 91},
      {r = 207, g = 95, b = 95},
      {r = 250, g = 108, b = 108},
      {r = 222, g = 100, b = 100},
      {r = 223, g = 110, b = 84},
      {r = 234, g = 107, b = 78},
      {r = 217, g = 131, b = 111},
    }
  }
}

local function index_to_letter(index, starting_at)
  return string.char(string.byte(starting_at or "a", 1) - 1 + index)
end

for i, tree_data in ipairs(tree_data) do
  local type_number = string.format("%02d", tree_data.type)
  local type_name = "tree-" .. type_number
  local name = type_name
  if tree_data.identifier then
    name = name .. "-" .. tree_data.identifier
  end
  local order = index_to_letter(i) .. "[" .. name .. "]"

  local tree_variations = {}
  for variation_index, variation in ipairs(tree_types[tree_data.type]) do
    local variation_letter = index_to_letter(variation_index)
    local variation_path = type_number .. "/" .. type_name .. "-" .. variation_letter

    tree_variations[#tree_variations + 1] =
    {
      trunk =
      {
        filename = "__base__/graphics/entity/tree/" .. variation_path .. "-trunk.png",
        width = variation.trunk.width,
        height =  variation.trunk.height,
        frame_count = 4,
        shift = variation.trunk.shift
      },
      leaves =
      {
        filename = "__base__/graphics/entity/tree/" .. variation_path .. "-leaves.png",
        width = variation.leaves.width,
        height = variation.leaves.height,
        frame_count = 3,
        shift = variation.leaves.shift
      },
      leaf_generation =
      {
        type = "create-particle",
        entity_name = "leaf-particle",
        offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
        initial_height = 2,
        initial_height_deviation = 1,
        speed_from_center = 0.01
      },
      branch_generation =
      {
        type = "create-particle",
        entity_name = "branch-particle",
        offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
        initial_height = 2,
        initial_height_deviation = 2,
        speed_from_center = 0.01,
        frame_speed = 0.1,
        repeat_count = 15
      }
    }
  end

  data:extend(
  {
    {
      type = "tree",
      name = name,
      icon = "__base__/graphics/icons/" .. type_name .. ".png",
      flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
      minable =
      {
        mining_particle = "wooden-particle",
        mining_time = 2,
        result = "raw-wood",
        count = 4
      },
      corpse = type_name .. "-stump",
      remains_when_mined = type_name .. "-stump",
      emissions_per_tick = -0.0005,
      max_health = 50,
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.9, -2.2}, {0.9, 0.9}},
      subgroup = "trees",
      order = "a[tree]-a[regular]-" .. order,
      vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
      autoplace = autoplace_settings(tree_data.autoplace_peaks, tree_data.autoplace_extra),
      variations = tree_variations,
      colors = tree_data.colors
    }
  })
end

for i, type_data in ipairs(tree_types) do
  local type_number = string.format("%02d", i)
  local type_name = "tree-" .. type_number
  local order = index_to_letter(i) .. "[" .. type_name .. "]"

  local stump_variations = {}
  for variation_index, variation in ipairs(type_data) do
    local variation_letter = index_to_letter(variation_index)
    local variation_path = type_number .. "/" .. type_name .. "-" .. variation_letter

    stump_variations[#stump_variations + 1] =
    {
      filename = "__base__/graphics/entity/tree/" .. variation_path .. "-trunk.png",
      width = variation.trunk.width,
      height = variation.trunk.height,
      x = variation.trunk.width * 4,
      frame_count = 1,
      direction_count = 1,
      shift = variation.trunk.shift
    }
  end

  data:extend(
  {
    {
      type = "corpse",
      name = type_name .. "-stump",
      icon = "__base__/graphics/icons/" .. type_name .. "-stump.png",
      flags = {"placeable-neutral", "not-on-map"},
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      tile_width = 1,
      tile_height = 1,
      selectable_in_game = false,
      time_before_removed = 60 * 60 * 15, -- 15 minutes
      final_render_layer = "remnants",
      subgroup = "remnants",
      order="d[remnants]-b[tree]-" .. order,
      animation = stump_variations
    }
  })
end

data:extend(
{
  {
    type = "noise-layer",
    name = "trees"
  },
  {
    type = "tree",
    name = "dead-tree",
    icon = "__base__/graphics/icons/dead-tree.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood",
      count = 2
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace = dead_trees_autoplace(0.5),
    pictures =
    {
      {
        filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-01.png",
        width = 108,
        height= 114
      },
      {
        filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-02.png",
        width = 155,
        height= 97,
        shift = {0.2, 0.2}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-03.png",
        width = 138,
        height= 124,
        shift = {0.4, -0.3}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-04.png",
        width = 112,
        height= 123,
        shift = {0, -0.4}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-05.png",
        width = 111,
        height= 113,
      },
      {
        filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-06.png",
        width = 78,
        height= 83,
      },
      {
        filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-07.png",
        width = 90,
        height= 105,
      }
    }
  },
  {
    type = "tree",
    name = "dry-tree",
    icon = "__base__/graphics/icons/dry-tree.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      count = 4,
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood"
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.4, -0.8}, {0.4, 0.2}},
    selection_box = {{-0.6, -1.5}, {0.6, 0.3}},
    subgroup = "trees",
    order = "a[tree]-c[dry-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace = dead_trees_autoplace(0.5),
    pictures =
    {
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-a.png",
        width = 194,
        height= 116,
        shift = {2.25, -0.78125}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-b.png",
        width = 155,
        height= 129,
        shift = {1.42188, -1.32812}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-c.png",
        width = 113,
        height= 81,
        shift = {1.26562, -0.765625}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-d.png",
        width = 156,
        height= 120,
        shift = {0.96875, -1.1875}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-e.png",
        width = 150,
        height= 124,
        shift = {1.53125, -1.25}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-f.png",
        width = 178,
        height= 116,
        shift = {1.96875, -1.15625}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-02-a.png",
        width = 147,
        height= 123,
        shift = {1.8125, -1.48438}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-02-b.png",
        width = 168,
        height= 133,
        shift = {1.17188, -1.10938}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-02-c.png",
        width = 174,
        height= 134,
        shift = {1.07812, -1.5625}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-02-d.png",
        width = 215,
        height= 136,
        shift = {2.875, -0.96875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-02-e.png",
        width = 158,
        height= 115,
        shift = {2.14062, -1.07812}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-02-f.png",
        width = 180,
        height= 105,
        shift = {2.23438, -0.734375}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-a.png",
        width = 168,
        height= 111,
        shift = {0.78125, -1.14062}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-b.png",
        width = 145,
        height= 118,
        shift = {0.921875, -1.1875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-c.png",
        width = 161,
        height= 115,
        shift = {1.57812, -1.29688}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-d.png",
        width = 183,
        height= 122,
        shift = {2.20312, -1.21875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-e.png",
        width = 166,
        height= 122,
        shift = {2.0625, -0.90625}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-f.png",
        width = 160,
        height= 104,
        shift = {1.5625, -0.625}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-a.png",
        width = 195,
        height= 139,
        shift = {1.67188, -1.23438}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-b.png",
        width = 173,
        height= 138,
        shift = {1.29688, -0.875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-c.png",
        width = 210,
        height= 135,
        shift = {1.5, -1.64062}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-d.png",
        width = 149,
        height= 119,
        shift = {1.57812, -1.32812}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-e.png",
        width = 173,
        height= 143,
        shift = {1.39062, -1.73438}
      }
    }
  },
  {
    type = "tree",
    name = "green-coral",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    icon = "__base__/graphics/icons/green-coral.png",
    minable =
    {
      count = 1,
      mining_particle = "wooden-particle",
      mining_time = 2,
      result = "raw-wood"
    },
    max_health = 50,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.8}, {0.5, 0.5}},
    drawing_box = {{-0.5, -0.5}, {0.5, 0.5}},
    emissions_per_tick = 0,
    subgroup = "trees",
    order = "a[tree]-d[coral]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    --autoplace = autoplace_settings({{{35, 0.4}, {20, 0.2}}}),
    pictures =
    {
      {
        filename = "__base__/graphics/entity/tree/green-coral/green-coral-01.png",
        width = 58,
        height = 69,
        shift = {0.4, -0.4}
      },
      {
        filename = "__base__/graphics/entity/tree/green-coral/green-coral-02.png",
        width = 77,
        height = 97,
        shift = {0.7, -0.05}
      },
      {
        filename = "__base__/graphics/entity/tree/green-coral/green-coral-03.png",
        width = 41,
        height = 54,
        shift = {0.2, 0}
      },
      {
        filename = "__base__/graphics/entity/tree/green-coral/green-coral-04.png",
        width = 63,
        height = 61,
        shift = {0.7, 0.3}
      },
      {
        filename = "__base__/graphics/entity/tree/green-coral/green-coral-05.png",
        width = 63,
        height = 85,
        shift = {-0.1, 0.5}
      },
      {
        filename = "__base__/graphics/entity/tree/green-coral/green-coral-06.png",
        width = 67,
        height = 71
      },
      {
        filename = "__base__/graphics/entity/tree/green-coral/green-coral-07.png",
        width = 89,
        height = 77,
        shift = {-0.2, -0.4}
      }
    }
  },
  {
    type = "tree",
    name = "dead-grey-trunk",
    icon = "__base__/graphics/icons/dead-grey-trunk.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood",
      count = 2
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace = dead_trees_autoplace(1),
    pictures =
    {
      {
        filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-01.png",
        width = 105,
        height= 96,
        shift = {0.75, -0.46}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-02.png",
        width = 67,
        height= 87,
        shift = {0.4, 0.43}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-03.png",
        width = 114,
        height= 67,
        shift = {0.56, -0.25}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-04.png",
        width = 95,
        height= 85,
        shift = {0.62, 0.21}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-05.png",
        width = 100,
        height= 112,
        shift = {0.84, -0.84}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-06.png",
        width = 96,
        height= 82,
        shift = {0.0, -0.5}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-07.png",
        width = 143,
        height= 55,
        shift = {-0.46, 0.0}
      },
    }
  },
  {
    type = "tree",
    name = "dry-hairy-tree",
    icon = "__base__/graphics/icons/dry-hairy-tree.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood",
      count = 2
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace = dead_trees_autoplace(0.5),
    pictures =
    {
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-01.png",
        width = 201,
        height= 242,
        shift = {1.9, -0.68}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-02.png",
        width = 307,
        height= 256,
        shift = {2.62, -0.68}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-03.png",
        width = 286,
        height= 240,
        shift = {0.56, -1.5}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-04.png",
        width = 291,
        height= 229,
        shift = {3.5, -2.0}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-05.png",
        width = 265,
        height= 264,
        shift = {3.2, -0.46}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-06.png",
        width = 312,
        height= 267,
        shift = {2.59, -1.34}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-07.png",
        width = 294,
        height= 213,
        shift = {3.37, -0.25}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-08.png",
        width = 284,
        height= 217,
        shift = {2.28, -1.25}
      }
    }
  },
  {
    type = "tree",
    name = "dead-dry-hairy-tree",
    icon = "__base__/graphics/icons/dead-dry-hairy-tree.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood",
      count = 2
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace = dead_trees_autoplace(0.5),
    pictures =
    {
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-a.png",
        width = 194,
        height= 94,
        shift = {0.28125, -0.0625}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-b.png",
        width = 186,
        height= 151,
        shift = {0.15625, -0.171875}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-c.png",
        width = 163,
        height= 118,
        shift = {0.171875, -0.3125}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-d.png",
        width = 178,
        height= 153,
        shift = {1.09375, -0.234375}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-e.png",
        width = 195,
        height= 158,
        shift = {0.859375, -0.15625}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-f.png",
        width = 206,
        height= 141,
        shift = {0.4375, -0.328125}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-g.png",
        width = 209,
        height= 147,
        shift = {0.421875, -0.328125}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-h.png",
        width = 175,
        height= 106,
        shift = {0.109375, -0.5625}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-i.png",
        width = 155,
        height= 86,
        shift = {-0.046875, 0.125}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-j.png",
        width = 150,
        height= 135,
        shift = {0.59375, -0.171875}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-k.png",
        width = 159,
        height= 122,
        shift = {0.171875, -0.15625}
      },
      {
        filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-tree-02-l.png",
        width = 169,
        height= 121,
        shift = {0.234375, -0.109375}
      }
    }
  }
})
