package service;

import dao.Dao;
import dao.FactoryDao;
import dao.InterfaceDao;
import entity.TArticleEntity;
import java.util.List;

public class TArticleService {
    public boolean add(TArticleEntity TArticleEntity){
        Dao<TArticleEntity> dao = new Dao<>();
        return dao.save(TArticleEntity);
    }
    public boolean delete(TArticleEntity TArticleEntity){
        Dao<TArticleEntity> dao=new Dao<>();
        return dao.delete(TArticleEntity);
    }
    public boolean update(TArticleEntity TArticleEntity){
        Dao<TArticleEntity> dao=new Dao<>();
        return dao.update(TArticleEntity);
    }

    public boolean addArticle(String sql,TArticleEntity TArticleEntity){
        Dao<TArticleEntity> dao = new Dao<>();
        System.out.println("上传ing");
        String articleTitle = TArticleEntity.getArticleTitle();
        try {
            List<String>list = dao.cursor(sql, TArticleEntity.class);
            int L = list.size();
            for ( int i = 0;i<L;i++){
                if(articleTitle.equals(list.get(i)));
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dao.save(TArticleEntity);
    }
    public List cursor(String sql){
        InterfaceDao dao = FactoryDao.getDao();
        List list = null;
        try {
            list= dao.cursor(sql, TArticleEntity.class);
            System.out.println(list.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
