package com.zhongyi.repository;

import com.zhongyi.entity.Kp;

import java.util.List;

public interface KpRepository {
    public List<Kp> findAll();
    public void save(Kp kp);
    public void update(Kp kp);
    public void deleteById(Integer id);
    public Kp findById(Integer id);
}
