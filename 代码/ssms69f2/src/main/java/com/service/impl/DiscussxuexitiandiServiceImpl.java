package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussxuexitiandiDao;
import com.entity.DiscussxuexitiandiEntity;
import com.service.DiscussxuexitiandiService;
import com.entity.vo.DiscussxuexitiandiVO;
import com.entity.view.DiscussxuexitiandiView;

@Service("discussxuexitiandiService")
public class DiscussxuexitiandiServiceImpl extends ServiceImpl<DiscussxuexitiandiDao, DiscussxuexitiandiEntity> implements DiscussxuexitiandiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxuexitiandiEntity> page = this.selectPage(
                new Query<DiscussxuexitiandiEntity>(params).getPage(),
                new EntityWrapper<DiscussxuexitiandiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxuexitiandiEntity> wrapper) {
		  Page<DiscussxuexitiandiView> page =new Query<DiscussxuexitiandiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussxuexitiandiVO> selectListVO(Wrapper<DiscussxuexitiandiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussxuexitiandiVO selectVO(Wrapper<DiscussxuexitiandiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussxuexitiandiView> selectListView(Wrapper<DiscussxuexitiandiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxuexitiandiView selectView(Wrapper<DiscussxuexitiandiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
