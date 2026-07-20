local mp = require 'mp'
local utils = require 'mp.utils'

mp.add_key_binding('Ctrl+e', 'reveal-current-file', function()
    local path = mp.get_property_native('path')

    if not path or path:match('^%a[%w+.-]*://') then
        mp.osd_message('当前媒体不是本地文件', 1500)
        return
    end

    local info = utils.file_info(path)
    if not info or not info.is_file then
        mp.osd_message('文件不存在：' .. path, 3000)
        return
    end

    -- mpv 的 subprocess_detached 要将程序名也放在 args 的第一个元素。
    utils.subprocess_detached({
        args = { 'explorer.exe', '/select,' .. path },
        playback_only = false,
    })
end)
