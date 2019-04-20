package com.oceanluxury.frontdesk.service.imp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oceanluxury.frontdesk.dao.imp.ItemDaoImp;
import com.oceanluxury.model.Item;

public class ItemServiceImp {

    private ItemDaoImp itemDao;

	public ItemDaoImp getItemDao() {
		return itemDao;
	}
	public void setItemDao(ItemDaoImp itemDao) {
		this.itemDao = itemDao;
	}
	
    public List<Item> searchItem(){
    	Map<String, Object> condition = new HashMap<String, Object>();
    	return itemDao.searchItem(condition);
    }
    
    public List<Item> getTaskDetail(String taskId){
    	Map<String, Object> condition = new HashMap<String, Object>();
    	condition.put("taskId", taskId);
    	return itemDao.getTaskDetail(condition);
    }
    
}
