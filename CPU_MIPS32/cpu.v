
`timescale 1ns/1ps 
module cpu(input clk); 
    reg [31:0] PC, IF_ID_IR, IF_ID_NPC; 
    reg [31:0] REG [0:31]; 
    reg [31:0] MEM [0:1023]; 
    reg HALTED; 
    reg BRANCH_TAKEN; 
    reg [31:0] EX_MEM_IR, EX_MEM_COND, MEM_WB_IR; 
    reg [31:0] EX_MEM_ALUOUT, MEM_WB_LMD, MEM_WB_ALUOUT; 
    reg [2:0] Instr_ID_EX_type, Instr_EX_MEM_type, Instr_MEM_WB_type;
    reg [31:0] ID_EX_A, ID_EX_B, EX_MEM_B;
    reg [31:0] ID_EX_IR, ID_EX_IMM, ID_EX_NPC;
    //Register-Register
    localparam ADD   = 6'b000000; 
    localparam SUB   = 6'b000001; 
    localparam AND   = 6'b000010; 
    localparam OR    = 6'b000011; 
    localparam SLT   = 6'b000100; 
    localparam MUL   = 6'b000101; 
    localparam MLT   = 6'b000110; 
    //Halt
    localparam HLT   = 6'b000111; 
    //Load
    localparam LW    = 6'b001000; 
    //Store
    localparam SW    = 6'b001001;
    //Register to Memory
    localparam ADDI  = 6'b001010; 
    localparam SUBI  = 6'b001011; 
    localparam SLTI  = 6'b001100; 
    //Branch
    localparam BNEQZ = 6'b001101; 
    localparam BEQZ  = 6'b001110; 
    //Instruction Types :
    localparam RR_Type = 3'b000;
    localparam RM_Type = 3'b001;
    localparam LOAD = 3'b010;
    localparam STORE = 3'b011;
    localparam BRANCH = 3'b100;
    localparam HALT = 3'b101;
    //IF 
    always @(posedge clk) begin 
        if(HALTED == 0) begin 
            if((EX_MEM_IR[31:26] == BEQZ && EX_MEM_COND == 1) || (EX_MEM_IR[31:26] 
== BNEQZ && EX_MEM_COND == 0)) begin 
                BRANCH_TAKEN <= 1'b1; 
                IF_ID_NPC <= EX_MEM_ALUOUT + 1; 
                PC <= EX_MEM_ALUOUT + 1; 
                IF_ID_IR <= MEM[EX_MEM_ALUOUT]; 
            end 
            else begin 
                IF_ID_NPC <= PC + 1; 
                PC <= PC + 1; 
                IF_ID_IR <= MEM[PC]; 
            end 
       end 
   end 
   //ID 
   always @(posedge clk) begin 
        if(HALTED == 0) begin 
            //RS 
            if(IF_ID_IR[25:21] == 5'b00000) begin 
                ID_EX_A <= 0; 
            end 
            else begin 
                ID_EX_A <= REG[IF_ID_IR[25:21]]; 
            end 
            if(IF_ID_IR[20:16] ==  5'b00000) begin 
                ID_EX_B <= 0; 
            end 
            else begin 
                ID_EX_B <= REG[IF_ID_IR[20:16]]; 
            end
            ID_EX_NPC <= IF_ID_NPC; 
            ID_EX_IR <= IF_ID_IR;
            ID_EX_IMM <= {{16{IF_ID_IR[15]}}, {IF_ID_IR[15:0]}}; 
            case(IF_ID_IR[31:26])
 ADD, SUB, AND, OR, SLT, MUL : begin
                     Instr_ID_EX_type <= RR_Type;
                end
                HLT : begin
                    Instr_ID_EX_type <= HALT;
                end
                LW : begin
                    Instr_ID_EX_type <= LOAD;
                end
                SW : begin
                    Instr_ID_EX_type <= STORE;
                end
                BNEQZ, BEQZ : begin
                    Instr_ID_EX_type <= BRANCH;
                end
                ADDI, SUBI, SLTI : begin
                    Instr_ID_EX_type <= RM_Type;
                end
                default : Instr_ID_EX_type <= HALT;
           endcase
       end 
   end   
   
   
   
   
   //EX
   always @(posedge clk) begin  
        if(HALTED == 0) begin
            Instr_EX_MEM_type <= Instr_ID_EX_type;
            EX_MEM_IR <= ID_EX_IR;
            BRANCH_TAKEN <= 0;
            
            case(Instr_ID_EX_type)
                RR_Type : begin
                    case(ID_EX_IR[31:26])
                        ADD : EX_MEM_ALUOUT <= ID_EX_A + ID_EX_B;
                        SUB : EX_MEM_ALUOUT <= ID_EX_A - ID_EX_B;
                        AND : EX_MEM_ALUOUT <= ID_EX_A & ID_EX_B;
                        OR  : EX_MEM_ALUOUT <= ID_EX_A | ID_EX_B;
                        SLT : EX_MEM_ALUOUT <= ID_EX_A < ID_EX_B;
                        MUL : EX_MEM_ALUOUT <= ID_EX_A * ID_EX_B;
                    endcase
                end
                RM_Type : begin
                    case(ID_EX_IR[31:26]) 
                        ADDI : EX_MEM_ALUOUT <= ID_EX_A + ID_EX_IMM;
                        SUBI : EX_MEM_ALUOUT <= ID_EX_A - ID_EX_IMM;
                        SLTI : EX_MEM_ALUOUT <= ID_EX_A < ID_EX_IMM;
                    endcase
                end
                BRANCH : begin
                    EX_MEM_COND <= (ID_EX_A == 0);
                    EX_MEM_ALUOUT <= ID_EX_NPC + ID_EX_IMM;
                end
                LOAD, STORE : begin
                    EX_MEM_ALUOUT <= ID_EX_A + ID_EX_IMM;
                    EX_MEM_B <= ID_EX_B;
                end
            endcase
        end
    end
                    
                        
    //MEM
    always @(posedge clk) begin
        if(HALTED == 0) begin
            MEM_WB_IR <= EX_MEM_IR;
            Instr_MEM_WB_type <= Instr_EX_MEM_type;
            case(Instr_EX_MEM_type)
                RR_Type, RM_Type : begin
                    MEM_WB_ALUOUT <= EX_MEM_ALUOUT;
                end
                LOAD : begin
                     MEM_WB_LMD <= MEM[EX_MEM_ALUOUT];
                end
                STORE : begin 
                    if(BRANCH_TAKEN == 0) begin
                        MEM[EX_MEM_ALUOUT] <= EX_MEM_B;
                    end
                end
            endcase
         end
     end
     
     
     //WB
     always @(posedge clk) begin
        if(HALTED == 0) begin   
            case(Instr_MEM_WB_type)
                RR_Type : begin
                    REG[MEM_WB_IR[15:11]] <= MEM_WB_ALUOUT;
                end
                RM_Type : begin
                    REG[MEM_WB_IR[20:16]] <= MEM_WB_ALUOUT;
                end
                LOAD : begin
                    REG[MEM_WB_IR[20:16]] <= MEM_WB_LMD;
                end
                HALT : begin
                    HALTED <= 1'b1;
                end
             endcase
        end
     end
 endmodule 