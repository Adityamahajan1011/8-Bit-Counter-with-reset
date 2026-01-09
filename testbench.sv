module tb_counter_8;
reg clk;
reg reset ; 
wire [7:0]show ; 
counter c(clk,reset,show) ; 

always 
    #2 clk = ~clk ;

initial begin
    $dumpfile("tbc8_.vcd");
    $dumpvars(0, tb_counter_8);
end

initial begin
    clk = 0 ; 
    reset = 0 ;

    #14 reset = 1 ; 
    #22 reset = 0 ; 
    end
initial begin
    #400 $finish ; 
end
endmodule
