package com.entity.view;

import com.entity.XuexitiandiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学习天地
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-18 19:15:08
 */
@TableName("xuexitiandi")
public class XuexitiandiView  extends XuexitiandiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XuexitiandiView(){
	}
 
 	public XuexitiandiView(XuexitiandiEntity xuexitiandiEntity){
 	try {
			BeanUtils.copyProperties(this, xuexitiandiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
