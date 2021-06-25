package business.services;

import business.entities.Equipments;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.EquipmentMapper;

import java.util.List;

public class EquipmentFacade
{
    EquipmentMapper equipmentMapper;

    public EquipmentFacade(Database database){this.equipmentMapper = new EquipmentMapper(database);}

    public List<Equipments> getAllequipments() throws UserException
    {
        return equipmentMapper.getAllequipments();
    }
}
