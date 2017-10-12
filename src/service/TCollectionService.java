package service;

import dao.Dao;
import dao.FactoryDao;
import dao.InterfaceDao;
import entity.TCollectionEntity;
import entity.TUserEntity;

import java.util.List;

public class TCollectionService {
    public boolean add(TCollectionEntity TCollectionEntity){
        Dao<TCollectionEntity> dao = new Dao<>();
        return dao.save(TCollectionEntity);
    }
    public boolean delete(TCollectionEntity TCollectionEntity){
        Dao<TCollectionEntity> dao=new Dao<>();
        return dao.delete(TCollectionEntity);
    }
    public boolean update(TCollectionEntity TCollectionEntity){
        Dao<TCollectionEntity> dao=new Dao<>();
        return dao.update(TCollectionEntity);
    }
    public List cursor(String sql){
        InterfaceDao dao = FactoryDao.getDao();
        List list = null;
        try {
            list= dao.cursor(sql, TCollectionEntity.class);
            System.out.println(list.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
