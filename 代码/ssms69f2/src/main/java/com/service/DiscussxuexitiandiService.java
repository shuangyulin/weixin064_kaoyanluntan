package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussxuexitiandiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussxuexitiandiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussxuexitiandiView;


/**
 * 学习天地评论表
 *
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
public interface DiscussxuexitiandiService extends IService<DiscussxuexitiandiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxuexitiandiVO> selectListVO(Wrapper<DiscussxuexitiandiEntity> wrapper);
   	
   	DiscussxuexitiandiVO selectVO(@Param("ew") Wrapper<DiscussxuexitiandiEntity> wrapper);
   	
   	List<DiscussxuexitiandiView> selectListView(Wrapper<DiscussxuexitiandiEntity> wrapper);
   	
   	DiscussxuexitiandiView selectView(@Param("ew") Wrapper<DiscussxuexitiandiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxuexitiandiEntity> wrapper);
   	
}

