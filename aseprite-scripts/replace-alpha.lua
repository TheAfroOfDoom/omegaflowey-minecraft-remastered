----------------------------------------------------------------------
-- Replace the alpha channel for all pixels in an image from one value to another.
--
-- params:
--  - path: path to image file
--  - fromAlpha: alpha value to be replaced
--  - toAlpha: alpha value to replace with
----------------------------------------------------------------------

-- copied and modified from:
-- https://github.com/aseprite/Aseprite-Script-Examples/blob/68ed42647ef9990d6a27c4244277f83d6de8a69b/Random%20Pixels.lua

if app.apiVersion < 1 then
  return error("This script requires Aseprite v1.2.10-beta3")
end

local path = app.params["path"]
if path == nil then
  return error("Invalid path param: nil")
end
app.open(path)

local cel = app.activeCel
if not cel then
  return error("There is no active image")
end

local fromAlpha = tonumber(app.params["fromAlpha"])
if fromAlpha == nil or type(fromAlpha) ~= "number" or fromAlpha < 0 or fromAlpha > 255 then
  if fromAlpha == nil then
    fromAlpha = "nil"
  end
  return error("Invalid fromAlpha param: " ..fromAlpha)
end

local toAlpha = tonumber(app.params["toAlpha"])
if toAlpha == nil or type(toAlpha) ~= "number" or toAlpha < 0 or toAlpha > 255 then
  if toAlpha == nil then
    toAlpha = "nil"
  end
  return error("Invalid toAlpha param: " ..toAlpha)
end

if fromAlpha == toAlpha then
  return error("Invalid params: fromAlpha is the same as toAlpha (they should be different)")
end

local img = cel.image:clone()

local rgba = app.pixelColor.rgba
local didChange = false

for it in img:pixels() do
  if app.pixelColor.rgbaA(it()) == fromAlpha then
    it(
      rgba(
        app.pixelColor.rgbaR(it()),
        app.pixelColor.rgbaG(it()),
        app.pixelColor.rgbaB(it()),
        toAlpha
      )
    )
    didChange = true
  end
end

if not didChange then
  return app.exit()
end

-- Here we change the cel image, this generates one undoable action
cel.image = img

app.command.SaveFile {}
print("Finished " ..path)
