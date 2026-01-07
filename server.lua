function SendDiscordLog(title, message)
    if Config.Webhook == '' then return end

    local embed = {
        {
            title = title,
            description = message,
            color = Config.Color,
            footer = {
                text = Config.ServerName
            },
            timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ')
        }
    }

    PerformHttpRequest(
        Config.Webhook,
        function() end,
        'POST',
        json.encode({
            username = Config.ServerName,
            embeds = embed
        }),
        { ['Content-Type'] = 'application/json' }
    )
end

AddEventHandler('playerConnecting', function(name)
    SendDiscordLog(
        'Player Connecting',
        '**' .. name .. '** is joining the server.'
    )
end)
