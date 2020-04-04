package com.zhongyi.services;

import com.zhongyi.entity.Kp;

import java.util.List;

public interface KpService {
    public List<Kp> findAll();
    public void save(Kp kp);
    public void update(Kp kp);
    public void deleteById(Integer id);
    public Kp findById(Integer id);
}
