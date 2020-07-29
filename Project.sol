pragma solidity >=0.4.17 <0.7.0;

contract reportCard {
    
    string name;
    uint rollno;
    string batch;
    uint marks1;
    uint marks2;
    uint marks3;
    uint marks4;
    uint result;
    string status;
    
    function reportCard(string nwname, uint nwrollno, string nwbatch, uint nwmarksq1, uint nwmarksq2, uint nwmarksq3, uint nwmarksq4 ) public {
        
        name = nwname;
        rollno = nwrollno;
        batch = nwbatch;
        marks1 = nwmarksq1;
        marks2 = nwmarksq2;
        marks3 = nwmarksq3;
        marks4 = nwmarksq4;
        
        result = marks1 + marks2 + marks3 + marks4;
        result = result * 100/400;
        
         if( result < 40)
            status = "fail";
            
        else if(result >= 40)
            status = "pass";
    }
    
    function getdetails() public view returns(string, uint, string, uint, uint, uint, uint, uint, string){
        return (name, rollno, batch, marks1, marks2, marks3, marks4, result, status);
    }
}