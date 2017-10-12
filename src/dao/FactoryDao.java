package dao;

/**
 * Created by Wendy Chan on 2017/9/6
 */
public class FactoryDao {
        public static InterfaceDao getDao(){
            return  new Dao();
        }
    }
