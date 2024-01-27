package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuexitiandiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuexitiandiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuexitiandiView;


/**
 * 学习天地
 *
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
public interface XuexitiandiService extends IService<XuexitiandiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuexitiandiVO> selectListVO(Wrapper<XuexitiandiEntity> wrapper);
   	
   	XuexitiandiVO selectVO(@Param("ew") Wrapper<XuexitiandiEntity> wrapper);
   	
   	List<XuexitiandiView> selectListView(Wrapper<XuexitiandiEntity> wrapper);
   	
   	XuexitiandiView selectView(@Param("ew") Wrapper<XuexitiandiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuexitiandiEntity> wrapper);
   	
}

