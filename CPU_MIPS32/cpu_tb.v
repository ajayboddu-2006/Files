 `timescale 1ns/1ps
 module cpu_tb();
    reg clk;
    integer i;
    cpu uut(.clk(clk));
    initial begin
        for(i = 0; i < 32; i = i+1) begin       
            cpu.REG[i] = i;
        end
    end
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        cpu.MEM[0] = 32'h2801000a;  //ADDI R1, R0, 10
        cpu.MEM[1] = 32'h28020014;  //ADDI R1, R0, 20
        cpu.MEM[2] = 32'h28030019;  //ADDI R1, R0, 30
        cpu.MEM[3] = 32'h0ce77800;  //OR R7, R7, R7 (Dummy Instr to avoid Hazard)
        cpu.MEM[4] = 32'h0ce77800;  //OR R7, R7, R7 (Dummy Instr to avoid Hazard)
        cpu.MEM[5] = 32'h00222000;  //ADD R4, R1, R2
        cpu.MEM[6] = 32'h0ce77800;  //OR R7, R7, R7 (Dummy Instr to avoid Hazard)
        cpu.MEM[7] = 32'h00832800;  //ADDI R5, R4, R3
        cpu.MEM[8] = 32'hfc000000;  //HLT
        cpu.HALTED = 0;
        cpu.PC = 0;
        cpu.BRANCH_TAKEN = 0;
        for(i = 0; i < 32; i = i + 1) begin
            $display("Reg%d - %d", i, cpu.REG[i]);
        end
        if(cpu.REG[5] == 32'd60) begin
            $display(" Simulation passed ");
        end
        else begin
            $display(" Simulation failed ");
        end
    end
    initial begin
        $dumpfile("cpu.vcd");
        $dumpvars(0, cpu_tb);
    end
 endmodule