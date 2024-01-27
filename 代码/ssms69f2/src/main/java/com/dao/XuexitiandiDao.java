package com.dao;

import com.entity.XuexitiandiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuexitiandiVO;
import com.entity.view.XuexitiandiView;


/**
 * 学习天地
 * 
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
public interface XuexitiandiDao extends BaseMapper<XuexitiandiEntity> {
	
	List<XuexitiandiVO> selectListVO(@Param("ew") Wrapper<XuexitiandiEntity> wrapper);
	
	XuexitiandiVO selectVO(@Param("ew") Wrapper<XuexitiandiEntity> wrapper);
	
	List<XuexitiandiView> selectListView(@Param("ew") Wrapper<XuexitiandiEntity> wrapper);

	List<XuexitiandiView> selectListView(Pagination page,@Param("ew") Wrapper<XuexitiandiEntity> wrapper);
	
	XuexitiandiView selectView(@Param("ew") Wrapper<XuexitiandiEntity> wrapper);
	
}
