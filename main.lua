-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on: Mar 23, 2019
--
-- This file will calculate the price of a pizza with multiple sizes and topping options.
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Matsuru Hoshi
-- Created on: Mar 23, 2019
--
-- This file will calculate the price of a pizza with multiple sizes and topping options. 
-- The idea is that it seems like there are multiple pages/phases for each prompt.
-----------------------------------------------------------------------------------------

--local background = display.setdefault( "background" )

-- Buttons to click to choose large or extra-large

-- Next Button

-- Variables used in the future 

local size = ""
local toppings = 0
total = 0

local showChooseSize function DisplayChooseSize()

	-- Title/Name

	local title = display.newText( "Make-Yo Pizza", 160, 80, "Arial", 40)

	-- Prompt 

	local SizeQuestionText = display.newText( "Choose a size.", 160, 180, "Arial", 20)

	-- Background colour

	display.setDefault( "background", 108/255, 108/255, 108/255)

	-- Buttons and the text for what they do.

	local largeButton = display.newRect( 90, 250, 120, 50)
	largeButton:setFillColor( 5/255, 100/255, 10/255)

	local largeButtonText = display.newText( "Large", 90, 250, "Arial", 20)

	local extralargeButton = display.newRect( 240, 250, 120, 50)
	extralargeButton:setFillColor( 180/255, 32/255, 188/ 255)

	local extralargeButtonText = display.newText( "Extra-large", 240, 250, "Arial", 20)

	local nextButton = display.newRect( 160, 450, 80, 50)
	nextButton:setFillColor( 61/255, 61/255, 61/255)

	local nextButtonText = display.newText( "Next", 160, 450, "Arial", 20)

	local largeTouch function Assign1( event )
		size = "large"
		return true
	end

	-- Extra-large Button

	local extralargeTouch function Assign2( event )
		size = "extralarge"
		return true
	end

	largeButton:addEventListener( "touch", Assign1)
	extralargeButton:addEventListener( "touch", Assign2)

	nextButton:addEventListener( "touch", EvaluateSize)

end

local showChooseToppings function DisplayChooseToppings( event )
	-- 
	-- Will 'add' rectangle over everything in Phase 1. Acts as 'new background.' 
	--

	local background2 = display.newRect( 160, 250, 350, 600)
	background2:setFillColor( 108/255, 108/255, 108/255)

	-- Prompt to pick # of toppings

	local NumberOfTpText = display.newText( "Pick a number of toppings.", 160, 100, "Arial", 20)

	-- # of toppings buttons

	local toppingOneButton = display.newRect( 100, 200, 60, 60)
	toppingOneButton:setFillColor( 0.1, 0.5, 0.8)

	local TOBText = display.newText( "1", 100, 200, "Arial", 20 )

	local toppingTwoButton = display.newRect( 230, 200, 60, 60)
	toppingTwoButton:setFillColor( 210/255, 214/255, 14/255)

	local TTBText = display.newText( "2", 230, 200, "Arial", 20)

	local toppingThreeButton = display.newRect( 100, 280, 60, 60)
	toppingThreeButton:setFillColor( 0.3, 0.4, 0.3)

	local TThreeText = display.newText( "3", 100, 280, "Arial", 20)

	local toppingFourButton = display.newRect( 230, 280, 60, 60)
	toppingFourButton:setFillColor( 198/255, 46/255, 43 /255)

	local TPBText = display.newText( "4", 230, 280, "Arial", 20)

	-- Calculate Button

	local calculateButton = display.newRect( 160, 400, 80, 50)
	calculateButton: setFillColor( 61/255, 61/255, 61/255)

	local calculateButtonText = display.newText( "Ok", 160, 400, "Arial", 20)

	--
	-- Will assign values to variables if such button is clicked.
	--

	local toppingOneTouch function Assign3( event )
		toppings = 1 
		return true
	end

	local toppingTwoTouch function Assign4( event )
		toppings = 2
		return true
	end

	local toppingThreeTouch function Assign5( event )
		toppings = 3
		return true
	end

	local toppingFourTouch function Assign6( event )
		toppings = 4
		return true
	end

	toppingOneButton:addEventListener( "touch", Assign3)
	toppingTwoButton:addEventListener( "touch", Assign4)
	toppingThreeButton:addEventListener( "touch", Assign5)
	toppingFourButton:addEventListener( "touch", Assign6)
	calculateButton:addEventListener( "touch", EvaluateToppings)
end

local showCalculateTotal function DisplayTotal( event )

	-- background

	local background3 = display.newRect( 160, 250, 350, 600)
	background3:setFillColor( 108/255, 108/255, 108/255)
	
	-- cute boxes

	local box1 = display.newRect( 160, 100, 400, 60)
	box1:setFillColor( 244/255, 150/255, 40/255)

	local box2 = display.newRect( 160, 320, 400, 170)
	box2:setFillColor( 244/255, 150/255, 40/255)
	
	-- Heading

	local heading = display.newText( "Yo REceIpt", 160, 100, "Arial", 40)

	-- Descrition

	local sizeText = display.newText( "Size: ".. size, 160, 160, "Arial", 20)

	local toppingText = display.newText( "Toppings: ".. toppings, 160, 185, "Arial", 20)

	-- Subtotal, tax, and total

	local subtotalText = display.newText( "The subtotal is $".. subtotal, 160, 270, "Arial", 20)
	subtotalText.id = "subtotal"
	subtotalText:setFillColor( 1, 1, 1)

	local taxText = display.newText( "The tax is $".. tax, 160, 320, "Arial", 20)
	taxText.id = "tax"
	taxText:setFillColor( 1, 1, 1)

	local totalText = display.newText( "The total is $".. total, 160, 370, "Arial", 20)
	totalText.id = "total"
	totalText:setFillColor( 1, 1, 1)
	
end

local evaluateSize function EvaluateSize ( event )
	if (size == "large" or size == "extralarge") then
		DisplayChooseToppings()
	else
		local AlertText = display.newText( "Pick a size.", 160, 350, "Arial", 20)
	end
end

local evaluateToppings function EvaluateToppings( event )
	
	

	subtotal = 0

	if (size == "large") then
		subtotal = 6
	elseif (size == "extralarge") then
		subtotal = 10
	else
		return print ("pick a size!")
	end

	if (toppings == 1) then
		subtotal = subtotal + 1
		tax = subtotal * 0.13
		total = tax + subtotal
	elseif (toppings == 2) then
		subtotal = subtotal + 1.75
		tax = subtotal * 0.13
		total = tax + subtotal
	elseif (toppings == 3) then
		subtotal =  subtotal + 2.5
		tax = subtotal * 0.13
		total = tax + subtotal
	elseif (toppings == 4) then
		subtotal = subtotal + 3.35
		tax = subtotal * 0.13
		total = tax + subtotal
	else 
		return print ("pick a topping!") 
	end

	print ("Size selected is: ".. size)
	print ("Toppings selected is: ".. toppings)
	print ("The subtotal is: ".. subtotal)
	print ("The tax is: ".. tax)
	print ("The total is: ".. total)

	
	DisplayTotal()
end

-- Choose size
DisplayChooseSize()




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

local size = ""
local toppings = 0
--------------------------------------------------------------
-- Will assign values to the variable if button is clicked
--------------------------------------------------------------

-- Large Button 

local largeTouch function Assign1( event )
	
	size = "large"

	return true
end

-- Extra-large Button

local extralargeTouch function Assign2( event )

	size = "extralarge"
	
	return true

end

-- First Topping Button

local toppingOneTouch function Assign3( event )

	toppings = 1 

	return true

end

-- Second Topping Button

local toppingTwoTouch function Assign4( event )

	toppings = 1.75

	return true

end


-- Third Toppign Button

local toppingThreeTouch function Assign5( event )

	toppings = 2.5
	

	return true

end


-- Fourth Topping Button 

local toppingFourTouch function Assign6( event )

	toppings = 3.35

	return true

end


-- Calculate function for every possible selection

local Calculations function Calculate( event )

		print ("Size selected is: ".. size)
		print ("Toppings selected are: ".. toppings)

		if (size == "large") then

			subtotal = 6

			elseif (size == "extralarge") then
							subtotal = 10

						else
							print ("don't be a dope.  pick something.")

		end


if (toppings == 1) then
	subtotal += 1
	elseif (toppings == 1.75) then
		subtotal += 1.75
	elseif (toppings == 2.50) then
		subtotal += 2.5
	elseif (toppings == 3.35) then




		if (largeTouch == 6 and toppingOneTouch == 1) then
			local Subtotal 
			Subtotal = largeTouch + toppingOneTouch
			print(Subtotal)

			return true
		

		elseif (largeTouch == 6 and toppingTwoTouch == 1.75) then
			local Subtotal 
			Subtotal = largeTouch + toppingTwoTouch
			print(Subtotal)

			return true
		

		elseif (largeTouch == 6  and toppingThreeTouch == 2.5) then
			local Subtotal
			Subtotal = largeTouch + toppingThreeTouch	
			print(Subtotal)
			
			return true
		

		elseif (largeTouch == 6 and toppingFourTouch == 3.35) then
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

