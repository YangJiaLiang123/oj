
        console.log($("#nickName"));
    	$("#nickName").blur(function(){
    	    $.ajax({
    	        type:"get",
    	        url:"NickName.do",
    	        async:true,
    	        dataType: 'text',
    	        data:{
    	          name:$('#nickName')[0].value,
    	        },success : function(data){
    	        	console.log(data);
    	          if(data=="true"){
    		          $('#nickName').next().html("该昵称可用").css('color','#10ea10');
    	          }
    	          if(data=="false1"){
    	        	  $('#nickName').next().css('color','red');
    		          $('#nickName').next().html("昵称不能为空");
    		          $('#nickName')[0].focus();
    	          }
    	          if(data=="false"){
    	        	  $('#nickName').next().css('color','red');
    		          $('#nickName').next().html("昵称已存在");
    	        	  $('#nickName')[0].focus();
    	          }
    	        },error:function(XMLHttpRequest, textStatus, errorThrown){  
    	        	layer.alert('未知异常');
    	   	  	}
    	    });
    	})

			console.log($("#userName"));
			$("#userName").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"verifyName.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#userName')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#userName').next().html("用户名可用").css('color','#10ea10');
			          }
			          if(data=="false1"){
			        	  $('#userName').next().css('color','red');
				          $('#userName').next().html("用户名不能为空");
				          $('#userName')[0].focus();
			          }
			          if(data=="false"){
			        	  $('#userName').next().css('color','red');
				          $('#userName').next().html("用户名已存在");	
			        	  $('#userName')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	
			console.log($("#passWord"));
			$("#passWord").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"passWord.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#passWord')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#passWord').next().html("");
			          }
			          if(data=="false1"){
			        	  $('#passWord').next().css('color','red');
				          $('#passWord').next().html("密码不能为空");
				          $('#passWord')[0].focus();
			          }
			          if(data=="false"){
			        	  $('#passWord').next().css('color','red');
				          $('#passWord').next().html("密码格式不正确");
				          $('#passWord')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})

			console.log($("#email"));
			$("#email").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"email.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#email')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#email').next().html("该邮箱可用").css('color','#10ea10');
			          }
			          if(data=="false1"){
			        	  $('#email').next().css('color','red');
				          $('#email').next().html("邮箱不能为空");
				          $('#email')[0].focus();
			          }
			          if(data=="false2"){
			        	  $('#email').next().css('color','red');
				          $('#email').next().html("邮箱已存在");
				          $('#email')[0].focus();
				         
			          }
			          if(data=="false"){
			        	  $('#email').next().css('color','red');
				          $('#email').next().html("邮箱不正确");
				          $('#email')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	
			console.log($("#telephone"));
			$("#telephone").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"telephone.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#telephone')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#telephone').next().html("该号码可用").css('color','#10ea10');
			          }
			          if(data=="false1"){
			        	  $('#telephone').next().css('color','red');
				          $('#telephone').next().html("手机号不能为空");
				          $('#telephone')[0].focus();
			          }
			          if(data=="false"){
			        	  $('#telephone').next().css('color','red');
				          $('#telephone').next().html("手机号无效");
				          $('#telephone')[0].focus();
			          }
			          if(data=="false2"){
			        	  $('#telephone').next().css('color','red');
				          $('#telephone').next().html("手机号已存在");
				          $('#telephone')[0].focus();
				         
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
