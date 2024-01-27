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


import com.dao.XuexiqiandaoDao;
import com.entity.XuexiqiandaoEntity;
import com.service.XuexiqiandaoService;
import com.entity.vo.XuexiqiandaoVO;
import com.entity.view.XuexiqiandaoView;

@Service("xuexiqiandaoService")
public class XuexiqiandaoServiceImpl extends ServiceImpl<XuexiqiandaoDao, XuexiqiandaoEntity> implements XuexiqiandaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuexiqiandaoEntity> page = this.selectPage(
                new Query<XuexiqiandaoEntity>(params).getPage(),
                new EntityWrapper<XuexiqiandaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuexiqiandaoEntity> wrapper) {
		  Page<XuexiqiandaoView> page =new Query<XuexiqiandaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuexiqiandaoVO> selectListVO(Wrapper<XuexiqiandaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuexiqiandaoVO selectVO(Wrapper<XuexiqiandaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuexiqiandaoView> selectListView(Wrapper<XuexiqiandaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuexiqiandaoView selectView(Wrapper<XuexiqiandaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
