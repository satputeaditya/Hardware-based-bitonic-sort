// comparator.v


module comparator #( parameter W = 32 ) // Width of Data in / out 
                   (

                     input  [W-1:0] Din1 ,
                     input  [W-1:0] Din2 ,
                     output reg [W-1:0] Dout_B, 
                     output reg [W-1:0] Dout_S
                   );


assign high_val = 1'b1;
assign low_val = 1'b0;


always @(*) 

begin
  if (Din1>=Din2)  begin Dout_B = Din1;  Dout_S = Din2; end
  if (Din2>Din1)   begin Dout_B = Din2;  Dout_S = Din1; end
  if (Din2==Din1)  begin Dout_B = Din1;  Dout_S = Din2; end
end

endmodule