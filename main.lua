-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on: Mar 23, 2019
--
-- This file will calculate the price of a pizza with multiple sizes and topping options.
-----------------------------------------------------------------------------------------

--local background = display.setdefault( "background" )

-- Buttons to click to choose large or extra-large

local largeButton = display.newRect( 100, 60, 60, 50)
largeButton:setFillColor( 5/255, 100/255, 10/255)

local extralargeButton = display.newRect( 230, 60, 60, 50)
extralargeButton:setFillColor( 180/255, 32/255, 188/ 255)

-- Buttons to click to choose the # of toppigns

local toppingOneButton = display.newRect( 100, 200, 30, 30)
toppingOneButton:setFillColor( 0.1, 0.5, 0.8)

local toppingTwoButton = display.newRect( 230, 200, 30, 30)
toppingTwoButton:setFillColor( 210/255, 214/255, 14/255)

local toppingThreeButton = display.newRect( 100, 280, 30, 30)
toppingThreeButton:setFillColor( 0.3, 0.4, 0.3)

local toppingFourButton = display.newRect( 230, 280, 30, 30)
toppingFourButton:setFillColor( 198/255, 46/255, 43 /255)

-- Calculate Button

local calculateButton = display.newRect( 160, 400, 80, 50)


--------------------------------------------------------------
-- Will assign values to the variable if button is clicked
--------------------------------------------------------------

-- Large Button 

local largeTouch function Assign1( event )
	
		largeTouch = 6
		print(largeTouch)

		return true
end

-- Extra-large Button

local extralargeTouch function Assign2( event )

	extralargeTouch = 10
	print(extralargeTouch)

	return true

end

-- First Topping Button

local toppingOneTouch function Assign3( event )

	toppingOneTouch = 1 
	print(toppingOneTouch)

	return true

end

-- Second Topping Button

local toppingTwoTouch function Assign4( event )

	toppingTwoTouch = 1.75
	print(toppingTwoTouch)

	return true

end


-- Third Toppign Button

local toppingThreeTouch function Assign5( event )

	toppingThreeTouch = 2.5
	print(toppingThreeTouch)

	return true

end


-- Fourth Topping Button 

local toppingFourTouch function Assign6( event )

	toppingFourTouch = 3.35
	print(toppingFourTouch)

	return true

end


local Calculations function Calculate( event )

	if (largeTouch == 6 and toppingOneTouch == 1) then
		
		local Subtotal 

		Subtotal = largeTouch + toppingOneTouch

		print(Subtotal)

		return true

	end

	if (largeTouch == 6 and toppingTwoTouch == 1.75) then

		local Subtotal 

		Subtotal = largeTouch + toppingTwoTouch

		print(Subtotal)

		return true

	end

	if (largeTouch == 6  and toppingThreeTouch == 2.5) then

		local Subtotal

		Subtotal = largeTouch + toppingThreeTouch
		
		print(Subtotal)
		
		return true

	end

	if (largeTouch == 6 and toppingFourTouch == 3.35) then

		local Subtotal

		Subtotal = largeTouch + toppingFourTouch

		print(Subtotal)

		return true

	end

end


largeButton:addEventListener( "touch", Assign1)
extralargeButton:addEventListener( "touch", Assign2)
toppingOneButton:addEventListener( "touch", Assign3)
toppingTwoButton:addEventListener( "touch", Assign4)
toppingThreeButton:addEventListener( "touch", Assign5)
toppingFourButton:addEventListener( "touch", Assign6)
calculateButton:addEventListener( "touch", Calculate)

