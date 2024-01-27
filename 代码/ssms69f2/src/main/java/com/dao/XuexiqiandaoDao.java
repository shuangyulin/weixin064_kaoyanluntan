package com.dao;

import com.entity.XuexiqiandaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuexiqiandaoVO;
import com.entity.view.XuexiqiandaoView;


/**
 * 学习签到
 * 
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
public interface XuexiqiandaoDao extends BaseMapper<XuexiqiandaoEntity> {
	
	List<XuexiqiandaoVO> selectListVO(@Param("ew") Wrapper<XuexiqiandaoEntity> wrapper);
	
	XuexiqiandaoVO selectVO(@Param("ew") Wrapper<XuexiqiandaoEntity> wrapper);
	
	List<XuexiqiandaoView> selectListView(@Param("ew") Wrapper<XuexiqiandaoEntity> wrapper);

	List<XuexiqiandaoView> selectListView(Pagination page,@Param("ew") Wrapper<XuexiqiandaoEntity> wrapper);
	
	XuexiqiandaoView selectView(@Param("ew") Wrapper<XuexiqiandaoEntity> wrapper);
	
}
