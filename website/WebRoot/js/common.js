/*添加页面基础JS*/
window.onload=function(){
	function getByClass(oParent, sClassName)
	{
	    var aElm=oParent.getElementsByTagName('*');
	    var aArr=[];
	    for(var i=0; i<aElm.length; i++)
	    {
	        if(aElm[i].className==sClassName)
	        {
	            aArr.push(aElm[i]);
	        }
	    }
	    return aArr;
	};
	function tab(){
		var oTab=document.getElementById('tab');
	    var aLi=getByClass(oTab, 'nav')[0].getElementsByTagName('li');
	    var aA=oTab.getElementsByTagName('ul')[0].getElementsByTagName('a');
	    var aDiv=getByClass(oTab, 'box');
	    var i=0;

	    aDiv[0].style.display='block';
	    
	    for(i=0; i<aLi.length; i++)
	    {
	        aLi[i].index=i;
	        aLi[i].onclick=function()
	        {
	            for(i=0; i<aLi.length; i++)
	            {
	                aLi[i].className='';
	                aDiv[i].style.display='none';
	            }
	            this.className='active';
	            aDiv[this.index].style.display='block';
	        };
	    }
	}
	tab();
}