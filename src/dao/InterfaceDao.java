package dao;

import java.util.List;

/**
 * Created by Wendy Chan on 2017/9/6
 */

public  interface InterfaceDao<T> {

    boolean save(T u);

    boolean delete(T u);

    boolean update(T u);

    List cursor(String s, Class aclass)throws Exception;

}
