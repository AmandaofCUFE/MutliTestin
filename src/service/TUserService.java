package service;

import dao.InterfaceDao;
import dao.FactoryDao;
import dao.Dao;
import entity.TUserEntity;
import java.util.List;


public class TUserService {
    public TUserEntity login(String sql, TUserEntity u){
        String email = u.getUserEmail();
        String password = u.getPassword();
        InterfaceDao dao = FactoryDao.getDao();
        List<TUserEntity>list = null;
        System.out.println("登陆ing");
        try {
            list = dao.cursor(sql, TUserEntity.class);
            if(list.size()!=0){
                if(list.get(0).getPassword().equals(password)){
                System.out.println(list.get(0).getPassword());
                return list.get(0);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public boolean register(String sql,TUserEntity tUserEntity){
        Dao<TUserEntity> dao = new Dao<>();
        System.out.println("注册ing");
        String email = tUserEntity.getUserEmail();
        try {
            List<String>list = dao.cursor(sql, TUserEntity.class);
            int L = list.size();
            for ( int i = 0;i<L;i++){
                if(email.equals(list.get(i)));
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dao.save(tUserEntity);
    }
    public boolean delete(TUserEntity TUserEntity){
        Dao<TUserEntity> dao=new Dao<>();
        return dao.delete(TUserEntity);
    }
    public boolean update(TUserEntity TUserEntity){
        Dao<TUserEntity> dao=new Dao<>();
        return dao.update(TUserEntity);
    }
    public  List cursor(String sql){
        InterfaceDao dao = FactoryDao.getDao();
        List list = null;
        try {
            list= dao.cursor(sql, TUserEntity.class);
            System.out.println(list.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
