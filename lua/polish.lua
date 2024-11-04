-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    -- Butane/Ignition
    bu = "yaml",
    butane = "yaml",
    ign = "json",

    -- HCL/Terraform/Packer
    -- hcl = "terraform",
    tf = "terraform",
    zone = "bindzone",
  },

  filename = {
    [".envrc"] = "sh",
  },

  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
