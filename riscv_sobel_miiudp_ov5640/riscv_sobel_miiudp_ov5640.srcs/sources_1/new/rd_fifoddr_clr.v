module rd_fifoddr_clr(
  input ui_clk,
  input rdfifo_clr,
  output reg rd_addr_clr
    );      
reg rdfifo_clr_sync_ui_clk;
always@(posedge ui_clk)
  begin
    rdfifo_clr_sync_ui_clk <= rdfifo_clr;
    rd_addr_clr <= rdfifo_clr_sync_ui_clk;
  end   
    
endmodule