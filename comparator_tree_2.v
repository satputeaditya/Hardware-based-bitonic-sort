// comparator_tree_2.v


module comparator_tree_2 #( parameter W = 32 )
                        ( 
                         input      [W-1:0] Din1  ,Din2 , Din3  ,Din4  ,Din5  ,Din6 , Din7  ,Din8 ,
                         output     [W-1:0] Dout1 ,Dout2, Dout3 ,Dout4 ,Dout5 ,Dout6, Dout7 ,Dout8
                        ); 
                        


wire [W-1:0] data_1 , data_2 , data_3 , data_4 , data_5 , data_6 , data_7 , data_8;
wire [W-1:0] data_9 , data_10, data_11, data_12, data_13, data_14, data_15, data_16;
wire [W-1:0] data_17, data_18, data_19, data_20, data_21, data_22, data_23, data_24;
wire [W-1:0] data_25, data_26, data_27, data_28, data_29, data_30, data_31, data_32;


// STAGE 1 
comparator_tree_1 #(32) C1A ( Din1 , Din2 , Din3 , Din4 ,     data_1 , data_2  , data_3  , data_4);
comparator_tree_1 #(32) C1B ( Din5 , Din6 , Din7 , Din8 ,     data_5 , data_6  , data_7  , data_8);


// STAGE 2
comparator_tree_1 #(32) C2A ( data_1 , data_5 , data_2 , data_6 ,     data_9  , data_10  , data_11  , data_12);
comparator_tree_1 #(32) C2B ( data_3 , data_7 , data_4 , data_8 ,     data_13 , data_14  , data_15  , data_16);


// STAGE 3
comparator_tree_1 #(32) C3A ( data_9  , data_13 , data_10 , data_14 ,     data_17  , data_18  , data_19  , data_20);
comparator_tree_1 #(32) C3B ( data_11 , data_15 , data_12 , data_16 ,     data_21  , data_22  , data_23  , data_24);


// STAGE 4
comparator_tree_1 #(32) C4A ( data_17 , data_21 , data_18 , data_22 ,     data_25  , data_26  , data_27  , data_28);
comparator_tree_1 #(32) C4B ( data_19 , data_23 , data_20 , data_24 ,     data_29  , data_30  , data_31  , data_32);


/*
assign Dout1 = data_25;
assign Dout2 = data_26;
assign Dout3 = data_27;
assign Dout4 = data_28;
assign Dout5 = data_29;
assign Dout6 = data_30;
assign Dout7 = data_31;
assign Dout8 = data_32;
*/


assign Dout1 = data_17;
assign Dout2 = data_18;
assign Dout3 = data_19;
assign Dout4 = data_20;
assign Dout5 = data_21;
assign Dout6 = data_22;
assign Dout7 = data_23;
assign Dout8 = data_24;


endmodule