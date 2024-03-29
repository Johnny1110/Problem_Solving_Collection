---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by johnnywang.
--- DateTime: 2023/5/30 11:48 AM
---

-- 檢查 Key 是否存在
local exists = redis.call("EXISTS", KEYS[1])

-- 如果 Key 存在，回傳 false
if exists == 1 then
    return false
end

-- 如果 Key 不存在，新增 Key 並回傳 true
redis.call("SET", KEYS[1], ARGV[1])
--redis.call("EXPIRE", KEYS[1], ARGV[2])
return true