package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MenpiaogoumaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MenpiaogoumaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MenpiaogoumaiView;


/**
 * 门票购买
 *
 * @author 
 * @email 
 * @date 2021-05-10 13:36:20
 */
public interface MenpiaogoumaiService extends IService<MenpiaogoumaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MenpiaogoumaiVO> selectListVO(Wrapper<MenpiaogoumaiEntity> wrapper);
   	
   	MenpiaogoumaiVO selectVO(@Param("ew") Wrapper<MenpiaogoumaiEntity> wrapper);
   	
   	List<MenpiaogoumaiView> selectListView(Wrapper<MenpiaogoumaiEntity> wrapper);
   	
   	MenpiaogoumaiView selectView(@Param("ew") Wrapper<MenpiaogoumaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MenpiaogoumaiEntity> wrapper);
   	
}

