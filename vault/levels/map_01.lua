return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "2017.07.26",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 32,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 19,
  properties = {},
  tilesets = {
    {
      name = "vault",
      firstgid = 1,
      filename = "tilesetVault.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "tilesetVault.png",
      imagewidth = 320,
      imageheight = 320,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 100,
      tiles = {
        {
          id = 0,
          properties = {
            ["collision"] = false,
            ["exit"] = false
          }
        },
        {
          id = 1,
          properties = {
            ["collision"] = true,
            ["exit"] = false
          }
        },
        {
          id = 2,
          properties = {
            ["collision"] = false,
            ["exit"] = true
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "baseLayer",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 2, 2, 2, 2, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 1, 2,
        2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2,
        2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      name = "spawnLayer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "entry",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 928,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "collectLayer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 5,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 640,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 6,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 832,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 8,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 736,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 10,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 448,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 11,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 608,
          y = 768,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 12,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 768,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 13,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 768,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 14,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 768,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 15,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 864,
          y = 768,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 16,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 736,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 17,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 800,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        },
        {
          id = 18,
          name = "coin",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collect"] = true
          }
        }
      }
    }
  }
}
