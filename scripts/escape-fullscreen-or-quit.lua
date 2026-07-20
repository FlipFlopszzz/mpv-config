local mp = require 'mp'

mp.add_key_binding('ESC', 'escape-fullscreen-or-quit', function()
    if mp.get_property_native('fullscreen') then
        mp.set_property_native('fullscreen', false)
    else
        mp.command('quit')
    end
end)
