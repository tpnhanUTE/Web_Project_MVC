package com.wepr.booking.dao;
import java.util.Optional;
import java.util.*;
public interface DAO<T> {

    Optional<T> get(String id);

    default List<T> getAll() {
        return null;
    }

    void insert(T t);

    void update(T t, String[] params);

    void delete(T t);
}