--Lumberjack Program
--Works only for 2x2 trees such as spruce or jungle trees

function chopTree()
    --Chop Tree when it detects something in front
    while turtle.detect() do
        turtle.dig()
        print("Chop Chop!")
        if turtle.detectUp() then --Chop Leaves above when it detects them
            turtle.digUp()
        end
        turtle.up()
        print("Going Up!")
    end
    --When Done make turtle go down to the ground
    while not turtle.detect() and not turtle.detectDown() do
        turtle.down()
        print("Going Down!")
    end
end

function nextTree()
    if not turtle.detect() then
        turtle.forward() 
    end

    local success, data = turtle.inspect()
    if success then
        if data.name == "minecraft:spruce_log" then
            chopTree()
        end
    end

    turtle.turnLeft()
    success, data = turtle.inspect()
    if success then
        if data.name == "minecraft:spruce_log" then
            chopTree()
        end
        turtle.forward()
        turtle.turnRight()
        success, data = turtle.inspect()
        if success then
            if data.name == "minecraft:spruce_log" then
                chopTree()
            end
        end
    else
        turtle.turnRight()
        turtle.turnRight()
        success, data = turtle.inspect()
        if success then
            if data.name == "minecraft:spruce_log" then
                chopTree()
            end
            turtle.forward()
            turtle.turnLeft()
            success, data = turtle.inspect()
            if success then
                if data.name == "minecraft:spruce_log" then
                    chopTree()
                end
            end
        end
    end
end

chopTree()
nextTree()


--Print when finished
print("Job has finished!")
