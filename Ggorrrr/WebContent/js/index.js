
var index=0;
window.onload=function(){
    var food = document.querySelector(".food");
    cloneTr= food.firstElementChild.cloneNode(true);
    food.append(cloneTr);
    slideShow();
}

function slideShow(){
    
    var i;
    var x=document.getElementsByClassName("img");

    for(i=0;i<x.length;i++){
        x[i].style.display="none";
    }
    

    if(index==x.length-1){
        index=0;
    }
    
    if(index==0){
    	x[x.length-2].style.display="block";
    	x[0].style.display="block";
    	x[1].style.display="block";
    }
    else if(index==x.length-2){
    	x[index-1].style.display="block";
    	x[index].style.display="block";
    	x[x.length-1].style.display="block";
    }
    else{
    	
    	x[index-1].style.display="block";	
    	x[index].style.display="block";    	
    	x[index+1].style.display="block";
    }
    
    index++;
    setTimeout(slideShow,1500);
}
