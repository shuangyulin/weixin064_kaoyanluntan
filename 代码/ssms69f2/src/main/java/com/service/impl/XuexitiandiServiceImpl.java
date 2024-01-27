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


import com.dao.XuexitiandiDao;
import com.entity.XuexitiandiEntity;
import com.service.XuexitiandiService;
import com.entity.vo.XuexitiandiVO;
import com.entity.view.XuexitiandiView;

@Service("xuexitiandiService")
public class XuexitiandiServiceImpl extends ServiceImpl<XuexitiandiDao, XuexitiandiEntity> implements XuexitiandiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuexitiandiEntity> page = this.selectPage(
                new Query<XuexitiandiEntity>(params).getPage(),
                new EntityWrapper<XuexitiandiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuexitiandiEntity> wrapper) {
		  Page<XuexitiandiView> page =new Query<XuexitiandiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuexitiandiVO> selectListVO(Wrapper<XuexitiandiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuexitiandiVO selectVO(Wrapper<XuexitiandiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuexitiandiView> selectListView(Wrapper<XuexitiandiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuexitiandiView selectView(Wrapper<XuexitiandiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
