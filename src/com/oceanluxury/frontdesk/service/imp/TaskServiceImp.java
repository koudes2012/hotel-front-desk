package com.oceanluxury.frontdesk.service.imp;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.oceanluxury.common.Constant;
import com.oceanluxury.frontdesk.dao.imp.ItemDaoImp;
import com.oceanluxury.frontdesk.dao.imp.TaskDaoImp;
import com.oceanluxury.model.Item;
import com.oceanluxury.model.Task;

public class TaskServiceImp {

    private TaskDaoImp taskDao;
    private ItemDaoImp itemDao;

	public TaskDaoImp getTaskDao() {
		return taskDao;
	}
	public void setTaskDao(TaskDaoImp taskDao) {
		this.taskDao = taskDao;
	}
    public ItemDaoImp getItemDao() {
		return itemDao;
	}
	public void setItemDao(ItemDaoImp itemDao) {
		this.itemDao = itemDao;
	}
	
	public void insertTask(Task task){
    	taskDao.insertTask(task);
    }

    public List<Task> searchTask(String taskType, String taskStatus){
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("taskType", taskType);
		condition.put("taskStatus", taskStatus);
    	return taskDao.searchTask(condition);
    }
    
	public void deleteTask(String taskId) {
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("taskId", taskId);
		taskDao.deleteTask(condition);
	}
	
	public void updateTask(String taskId) {
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("taskId", taskId);
		condition.put("taskStatus", Constant.taskStatus_2);
		taskDao.updateTask(condition);
	}
	
	public void createKioskTask(String roomId, List<Item> itemList) {
		Task task = new Task();
    	task.setAssignedDate(new Date());
    	task.setTaskStatus(Constant.taskStatus_1);
    	task.setTaskType(Constant.taskType_6);
    	task.setRoomId(Integer.parseInt(roomId));
    	taskDao.insertTask(task);
    	
    	int taskId = task.getTaskId();
    	Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("taskId", taskId);
		
    	for (int i=0; i<itemList.size(); i++) {
    		Integer number = itemList.get(i).getNumber();
    		if (number!=null && number>0) {
        		condition.put("itemId", itemList.get(i).getItemId());
        		condition.put("number", itemList.get(i).getNumber());
        		itemDao.insertTaskItem(condition);
    		}
    	}
    	
	}
    
}
