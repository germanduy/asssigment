package dao;

import entity.EmployeeEntity;
import until.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

public class EmployeeDAO {
    EntityManager em;
    EntityTransaction tran;
    public EmployeeDAO(){
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }

    public void insert(EmployeeEntity employee){
        try{
            tran.begin();
            em.persist(employee);

            tran.commit();
        }catch (Exception e){
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }

    public List<EmployeeEntity> findAll() {
        Query query = em.createQuery("SELECT e FROM EmployeeEntity e");
        return (List<EmployeeEntity>) query.getResultList();
    }


}
