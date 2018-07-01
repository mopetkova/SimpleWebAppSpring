package com.websystique.springmvc.dao;

import java.util.List;

import com.websystique.springmvc.model.Employee;
import com.websystique.springmvc.model.MaritalStatus;
import com.websystique.springmvc.utils.Utils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;



@Repository("MaritalStatusDao")
public class MaritalStatusDaoImpl extends AbstractDao<Integer, MaritalStatus> implements MaritalStatusDao {


    public List<MaritalStatus> allMaritalStatus(){
        String u = new Utils("MaritalStatusDaoImpl", "allMaritalStatus").toString();
        Criteria criteria = createEntityCriteria();
        List<MaritalStatus> maritalStatusList = (List<MaritalStatus>) criteria.list();
        return  maritalStatusList;
    }

    @Override
    public MaritalStatus findById(Integer id) {
        return getByKey(id);
//        String u = new Utils("MaritalStatusDaoImpl", "findById").toString();
//        Criteria criteria = createEntityCriteria();
//        criteria.add(Restrictions.eq("maritalStatusId", id));
//        return (MaritalStatus) criteria.uniqueResult();
    }

    @Override
    public MaritalStatus findByName(String name){
        String u = new Utils("MaritalStatusDaoImpl", "findByName").toString();
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("status", name));
        return (MaritalStatus) criteria.uniqueResult();
    }


}