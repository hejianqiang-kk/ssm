package com.zhongyi.services.impl;

import com.zhongyi.entity.Kp;
import com.zhongyi.repository.KpRepository;
import com.zhongyi.services.KpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class KpServiceImpl implements KpService {
     @Autowired
    public KpRepository kpRepository;
    @Override
    public List<Kp> findAll() {
        return kpRepository.findAll();
    }

    @Override
    public void save(Kp kp) {
        kpRepository.save(kp);
    }

    @Override
    public void update(Kp kp) {
        kpRepository.update(kp);
    }

    @Override
    public void deleteById(Integer id) {
        kpRepository.deleteById(id);
    }

    @Override
    public Kp findById(Integer id) {
        return kpRepository.findById(id);
    }

}
