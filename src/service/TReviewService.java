package service;

import dao.Dao;
import dao.FactoryDao;
import dao.InterfaceDao;
import entity.TArticleEntity;
import java.util.List;
import entity.TReviewEntity;

public class TReviewService {
    public boolean add(TReviewEntity TReviewEntity){
        Dao<TReviewEntity> dao = new Dao<>();
        return dao.save(TReviewEntity);
    }
    public boolean delete(TReviewEntity TReviewEntity){
        Dao<TReviewEntity> dao=new Dao<>();
        return dao.delete(TReviewEntity);
    }
    public boolean update(TReviewEntity TReviewEntity){
        Dao<TReviewEntity> dao=new Dao<>();
        return dao.update(TReviewEntity);
    }

    public boolean addReview(String sql,TReviewEntity TReviewEntity){
        Dao<TReviewEntity> dao = new Dao<>();
        System.out.println("上传ing");
        String articleTitle = TReviewEntity.getArticleTitle();
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
        return dao.save(TReviewEntity);
    }
    public List cursor(String sql){
        InterfaceDao dao = FactoryDao.getDao();
        List list = null;
        try {
            list= dao.cursor(sql, TReviewEntity.class);
            System.out.println(list.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
