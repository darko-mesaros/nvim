local status_ok, v_colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end

v_colorizer.setup()

