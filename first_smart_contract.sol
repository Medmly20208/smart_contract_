pragma solidity ^0.5.2;

contract Vote{
   uint public p_1 = 0;
   uint public p_2 = 0;
   mapping (address=>uint) public voters;


   function vote(uint choice) public
   {

       require(voters[msg.sender]!=1,"you can't vote sorry");
       if(choice==1) p_1=p_1+1;
       else p_2=p_2+1;
       voters[msg.sender] = 1;
   }

}