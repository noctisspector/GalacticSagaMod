function forceVehicle(unitEntity, unitClassName, vehicleClassName)
	
	print("")
	print("forceVehicles() Called")

	local entityClassName = GetEntityClassName(unitEntity)
	
	if (entityClassName == unitClassName) then
		
		print("VALID")
		
		print("Entity name: " .. entityClassName)
		
		EnterVehicle(unitEntity, vehicleClassName)
	
	else
	
		print("INVALID")
	
	end

	print("Unit name: " .. unitClassName)
	print("Vehicle name: " .. vehicleClassName)
	print("")

end