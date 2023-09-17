--Lumberjack Program
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
--Print when finished
print("Job has finished!")
