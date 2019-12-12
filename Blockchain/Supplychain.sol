pragma solidity ^0.4.17;

contract Supplychain{
   
    //Production
    uint public QtyProduce;
    uint public ExpectedPrice;
    string public Crop;
   
    //storage
    uint public inputQty;
    uint public outputQty;
    uint public result;
   
    //Transportation
    uint damagedQty;
    uint loss;
   
    //Consumer
    uint public qtySold;
    uint public salePrice;
    uint public earning;
   
   
    //Production
    function setProduction(uint _QtyProduce,uint _ExpectedPrice, string _Crop,uint id) public {
        require(id==1111);
        QtyProduce =_QtyProduce;
        ExpectedPrice = _ExpectedPrice;
        Crop = _Crop;
    }
   
   
   
    //storage
   
    function checkQty(uint _inputQty,uint id) public payable returns(uint){
       
        require(id==2222);
        inputQty = _inputQty;
       
       
        if(QtyProduce==inputQty)
        {
            result = 1;
        }
        else
        {
            result = 0;
        }
       
        return result;
       
    }
   
    //Transportation
   
    function transportationLoss(uint _damagedQty,uint id) public payable returns (uint){
        require(id==3333);
       
        damagedQty = _damagedQty;
       
        loss = damagedQty*ExpectedPrice;
        return loss;
    }
   
   
    //Consumer
   
    function sales(uint _qtySold,uint _salePrice,uint id)public payable returns (uint){
        require(id==4444);
        qtySold = _qtySold - damagedQty;
        salePrice = _salePrice;
        earning = qtySold * salePrice;
        return earning;
    }
   
}
