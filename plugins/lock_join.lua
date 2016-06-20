local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_join'] == 'yes' then


if msg.to.type == 'channel' and not is_momod(msg) then
	 kick_user(user_id, msg.to.id)

        return 
      end
   end
end

return {patterns = {
    "^!!tgservice (chat_add_user_link)$"
}, run = run}
