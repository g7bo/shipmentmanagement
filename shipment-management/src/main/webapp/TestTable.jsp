<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
   <!-- 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js" ></script>
	 -->
	<!-- Include one of jTable styles. 
	<link href="./resources/jtable.2.4.0/themes/metro/blue/jtable.min.css" rel="stylesheet" type="text/css" />
	-->
	<!-- Include jTable script file. 
	<script src="./resources/jtable.2.4.0/jquery.jtable.min.js" type="text/javascript"></script>
	 -->
	 
	 
    <link href="tmp/themes/redmond/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css" />
	<link href="tmp/scripts/jtable/themes/lightcolor/blue/jtable.css" rel="stylesheet" type="text/css" />
	
	<script src="tmp/scripts/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script src="tmp/scripts/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
    <script src="tmp/scripts/jtable/jquery.jtable.js" type="text/javascript"></script>
		 
	 
	 
	 
	<script type="text/javascript">
    $(document).ready(function () {
    	        $('#PersonTableContainer').jtable({
    		            title: 'Table of people',
    		            actions: {
    		                listAction: 'CRUDController?action=list',
    		                createAction:'CRUDController?action=create',
    		                updateAction: 'CRUDController?action=update',
    		                deleteAction: 'CRUDController?action=delete'
    		            },
    		            fields: {
    		                userid: {
    		                 title:'S.NO',
    		                    key: true,
    		                    list: true,
    		                    create:true
    		                },
    		                firstName: {
    		                    title: 'First Name',
    		                    width: '30%',
    		                    edit:false
    		                },
    		                lastName: {
    		                    title: 'Last Name',
    		                    width: '30%',
    		                    edit:true
    		                },
    		                email: {
    		                    title: 'Email',
    		                    width: '20%',
    		                    edit: true
    		                }                
    		            }
    		        });
    		        $('#PersonTableContainer').jtable('load');
    		    });
    		</script>

</head>
<body>
	<div id="PersonTableContainer"></div>
</body>
</html>