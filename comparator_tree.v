// comparator_tree_1.v


module comparator_tree_1 #( parameter W =32)
                        ( 
                         input      [W-1:0] Din1 ,Din2 , Din3 ,Din4  ,
                         output     [W-1:0] Dout1,Dout2, Dout3,Dout4
                        ); 
                        


wire [W-1:0] data_B1,data_B2,data_B3,data_B4,data_B5,data_B6,data_B7,data_B8 ; //,data_B9,data_B10,data_B11,data_B12,data_B13,data_B14,data_B15,data_B16,data_B17,data_B18;
wire [W-1:0] data_S1,data_S2,data_S3,data_S4,data_S5,data_S6,data_S7,data_S8 ; // // //,data_S8,data_S9,data_S10,data_S11,data_S12,data_S13,data_S14,data_S15,data_S16,data_S17,data_S18;


// STAGE 1 
comparator #(32) C1A    ( Din1 ,Din2 ,data_B1 ,data_S1);
comparator #(32) C1B    ( Din3 ,Din4 ,data_B2 ,data_S2);


// STAGE 2
comparator #(32) C2A    ( data_B1 ,data_S2 ,data_B3 ,data_S3);  
comparator #(32) C2B    ( data_S1 ,data_B2 ,data_B4 ,data_S4);  


// STAGE 3
comparator #(32) C3A    ( data_B3 ,data_S4 ,data_B5  ,data_S5 );
comparator #(32) C3B    ( data_S3 ,data_B4 ,data_B6  ,data_S6 );



assign Dout1 = data_B7;
assign Dout2 = data_S7;
assign Dout3 = data_B8;
assign Dout4 = data_S8;


endmodule