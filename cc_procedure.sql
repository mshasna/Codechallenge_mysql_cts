Use drl_1;

DELIMITER $$
CREATE PROCEDURE `usp_PetProcedureDetailss`(IN ProcedureType CHAR(50))
BEGIN
	SELECT ProcedureHistory.pet_id, Pet.pet_name AS 'Pet Name', PetOwner.owner_name AS 'Owner Name', ProcedureHistory.Descript
	FROM ProcedureHistory
	JOIN Pet
	JOIN PetOwner
	WHERE ProcedureHistory.pet_id=Pet.pet_id AND Pet.owner_id=PetOwner.owner_id AND ProcedureHistory.procedure_type=procedure_type;
END$$

 CALL usp_PetProcedureDetailss('Surgery');