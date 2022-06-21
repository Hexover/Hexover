function alph(ch){
    ch=ch.toUpperCase();
    for (i=0;i<ch.length;i++){
        if(ch[i]<"A"&&ch[i]>"Z"){
            return false
        }
    }
}
function chiffre(ch){
    ch=ch.toUpperCase();
    for (i=0;i<ch.length;i++){
        if(ch[i]<="9"&&ch[i]>="0"){
            return false;
        }
    }
}
function verif(){
    cin=document.getElementById("cin").value
    if(cin.length != 8){
        alert("verif cin");
        return false
    }
    n=document.getElementById("nom").value
    if(alph(n)==fasle){
        alert("verif nom")
        return false
    }
    p=document.getElementById("pr").value
    if(alph(p)==fasle){
        alert("verif prenom");
        return false
    }
    tl=document.getElementById("tel").value
    if(chiffre(tel)==fasle || tel[0]=="0" || tel[0]=="1" || tel[0]=="6"){
        alert('verif tel')
    }

}
function verif2(){
    
}