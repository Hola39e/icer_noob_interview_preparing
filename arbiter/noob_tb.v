`timescale 1ns/1ps
module noob_tb;

  reg [2:0] req;
  wire [2:0] grant;


  noob_fixed_arb inst(req, grant);

  initial begin
    req <= 3'b001;
    #5
    $display("req is %0b, grant is %0b", req, grant);
    req <= 3'b011;
    #5
    $display("req is %0b, grant is %0b", req, grant);
    req <= 3'b111;
    #5
    $display("req is %0b, grant is %0b", req, grant);
    req <= 3'b010;
    #5
    $display("req is %0b, grant is %0b", req, grant);
  end

initial
begin            
    $dumpfile("wave.vcd");        //生成的vcd文件名称
    $dumpvars(0, noob_tb);    //tb模块名称
end
endmodule
