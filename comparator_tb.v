// comparator_tb.v

`define size 32


module comparator_tb (Dout1 ,Dout2, Dout3 ,Dout4 ,Dout5 ,Dout6, Dout7 ,Dout8);
output [0:31] Dout1 ,Dout2, Dout3 ,Dout4 ,Dout5 ,Dout6, Dout7 ,Dout8;

reg clk,rst;
reg [31:0] Mem [0:511]; 
reg [31:0] value1,value2,value3,value4,value5,value6,value7,value8 ;
initial $readmemh("data.txt",Mem); 
//initial $fgets("data.txt",Mem); 


integer k; 

initial begin : CLOCK
        rst = 1;
		clk = 1;
        #30 rst = 0;
        forever #10clk = ~clk;

end


always @ (posedge clk)
begin
if (rst) begin 
k=0; 
value1 = 0; 
value2 = 0; 
value3 = 0; 
value4 = 0; 
value5 = 0; 
value6 = 0; 
value7 = 0; 
value8 = 0; 


end
else 

k=k+1;

$display("%d:%h",k,Mem[k+0]); 
value1 = Mem[k+0];
$display("Value : %h",value1); 

$display("%d:%h",k,Mem[k+1]); 
value2 = Mem[k+1];
$display("Value : %h",value2); 

$display("%d:%h",k,Mem[k+2]); 
value3 = Mem[k+2];
$display("Value : %h",value3); 

$display("%d:%h",k,Mem[k+3]); 
value4 = Mem[k+3];
$display("Value : %h",value4); 

$display("%d:%h",k,Mem[k+4]); 
value5 = Mem[k+4];
$display("Value : %h",value5); 

$display("%d:%h",k,Mem[k+5]); 
value6 = Mem[k+5];
$display("Value : %h",value6); 

$display("%d:%h",k,Mem[k+6]); 
value7 = Mem[k+6];
$display("Value : %h",value7); 

$display("%d:%h",k,Mem[k+7]); 
value8 = Mem[k+7];
$display("Value : %h",value8); 


end 


//comparator_tree_2 #(32) ONE (value1,value2,value3,value4,value5,value6,value7,value8, Dout1 ,Dout2, Dout3 ,Dout4 ,Dout5 ,Dout6, Dout7 ,Dout8);
comparator_tree_1 #(32) ONE (value1,value2,value3,value4, Dout1 ,Dout2, Dout3 ,Dout4 );
//comparator #(32) ONE (value1,value2,Dout1 ,Dout2);



endmodule

