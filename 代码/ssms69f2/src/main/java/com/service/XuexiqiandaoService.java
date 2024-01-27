package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuexiqiandaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuexiqiandaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuexiqiandaoView;


/**
 * 学习签到
 *
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
public interface XuexiqiandaoService extends IService<XuexiqiandaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuexiqiandaoVO> selectListVO(Wrapper<XuexiqiandaoEntity> wrapper);
   	
   	XuexiqiandaoVO selectVO(@Param("ew") Wrapper<XuexiqiandaoEntity> wrapper);
   	
   	List<XuexiqiandaoView> selectListView(Wrapper<XuexiqiandaoEntity> wrapper);
   	
   	XuexiqiandaoView selectView(@Param("ew") Wrapper<XuexiqiandaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuexiqiandaoEntity> wrapper);
   	
}

