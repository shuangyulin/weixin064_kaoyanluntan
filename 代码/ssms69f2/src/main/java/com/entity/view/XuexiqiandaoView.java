package com.entity.view;

import com.entity.XuexiqiandaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学习签到
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
@TableName("xuexiqiandao")
public class XuexiqiandaoView  extends XuexiqiandaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XuexiqiandaoView(){
	}
 
 	public XuexiqiandaoView(XuexiqiandaoEntity xuexiqiandaoEntity){
 	try {
			BeanUtils.copyProperties(this, xuexiqiandaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
