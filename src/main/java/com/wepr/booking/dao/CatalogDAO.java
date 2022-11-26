package com.wepr.booking.dao;

import com.wepr.booking.JpaConfig.JpaConfig;
import com.wepr.booking.model.Catalog;
import com.wepr.booking.model.Place;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;
import java.util.Optional;

public class CatalogDAO {

    public List<Catalog> GetCatalog(){
        EntityManager em = JpaConfig.getEntityManager();
        String queryString = "SELECT c FROM Catalog c";
        TypedQuery<Catalog> q = em.createQuery(queryString,Catalog.class);
        List<Catalog> catalogs= null;
        try {
            catalogs = q.getResultList();
        }finally {
            em.close();
        }
        return catalogs;
    }
}
