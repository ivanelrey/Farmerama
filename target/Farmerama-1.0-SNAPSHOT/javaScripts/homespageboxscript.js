/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function chart() {
    document.getElementById("farmnews").style.display = "none";
    document.getElementById("chart").style.display = "block";
    document.getElementById("snapid").style.display = "none";
    document.getElementById("randompeople").style.display = "none";
    document.getElementById("chartframe").src = "http://charts.investing.com/index.php?pair_ID=1&timescale=300&candles=50&style=line";
}
function farmnews() {
    document.getElementById("chart").style.display = "none";
    document.getElementById("farmnews").style.display = "block";
    document.getElementById("snapid").style.display = "none";
    document.getElementById("randompeople").style.display = "none";
}
function seesnap() {
    document.getElementById("chart").style.display = "none";
    document.getElementById("farmnews").style.display = "none";
    document.getElementById("snapid").style.display = "block";
    document.getElementById("randompeople").style.display = "none";


    document.getElementById("snapimg").src = "<%=a%>";

}
function showrandompeople() {
    document.getElementById("randompeople").style.display = "block";
    document.getElementById("farmnews").style.display = "none";
    document.getElementById("chart").style.display = "none";
    document.getElementById("snapid").style.display = "none";
}


