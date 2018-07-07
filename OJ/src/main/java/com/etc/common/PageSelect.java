package com.etc.common;

import com.etc.bean.Page;
import com.etc.service.TopicService;

import javax.annotation.Resource;

public class PageSelect {
	@Resource
	private TopicService topicService;
	
	public static Page targetPage(Page page) {
		
        int pageSize=10; //设置每页大小
        page.setPageSize(pageSize);
        int curPage=page.getCurrentPage();        
        if (curPage==0) {
            curPage=1;
            page.setCurrentPage(curPage);
        }
        int startRow =page.getStartRow();        
        if (!(page.getCurrentPage()==0)) {
             startRow = getStartRowBycurrentPage(curPage, pageSize);
        }        
        page.setStartRow(startRow);
        return page;
    }

    public static Page targetPage(Page page,int limit) {

        int pageSize=limit; //设置每页大小
        page.setPageSize(pageSize);
        int curPage=page.getCurrentPage();
        if (curPage==0) {
            curPage=1;
            page.setCurrentPage(curPage);
        }
        int startRow =page.getStartRow();
        if (!(page.getCurrentPage()==0)) {
            startRow = getStartRowBycurrentPage(curPage, pageSize);
        }
        page.setStartRow(startRow);
        return page;
    }
	
	
	//根据当前页获取开始行  
    public static int getStartRowBycurrentPage(int currentPage,int pageSize){
        int startRow=0;        
        if (currentPage==1) {            
            return startRow=0;
        }       
        startRow=(currentPage-1)*pageSize;       
        return startRow;        
    }
}
