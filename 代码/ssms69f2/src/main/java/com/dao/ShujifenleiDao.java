package com.dao;

import com.entity.ShujifenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShujifenleiVO;
import com.entity.view.ShujifenleiView;


/**
 * 书籍分类
 * 
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
public interface ShujifenleiDao extends BaseMapper<ShujifenleiEntity> {
	
	List<ShujifenleiVO> selectListVO(@Param("ew") Wrapper<ShujifenleiEntity> wrapper);
	
	ShujifenleiVO selectVO(@Param("ew") Wrapper<ShujifenleiEntity> wrapper);
	
	List<ShujifenleiView> selectListView(@Param("ew") Wrapper<ShujifenleiEntity> wrapper);

	List<ShujifenleiView> selectListView(Pagination page,@Param("ew") Wrapper<ShujifenleiEntity> wrapper);
	
	ShujifenleiView selectView(@Param("ew") Wrapper<ShujifenleiEntity> wrapper);
	
}
