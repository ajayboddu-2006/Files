module APB_slave(PCLK, PRESET, PSELx, PADDR, PENABLE, PWDATA, , PWRITE, PRDATA, PREADY);
    input PCLK;
    input PRESET;
    input PSELx;
    input PWRITE;
    input PENABLE;
    input [31:0] PADDR;
    input [31:0] PWDATA;
    
    output reg [31:0] PRDATA;
    output reg PREADY;

    reg [31:0] MEM [0:7];
    always @(posedge PCLK or negedge PRESET) begin  
        if(!PRESET) begin   
            PRDATA<= 0;
            PREADY <=0;
        end
        else begin  
            if(PSELx && PENABLE) begin 
                if(PWRITE) begin
                    MEM[PADDR] <= PWDATA;
                    PREADY <= 1'b1;
                end
                else begin
                    PRDATA <= MEM[PADDR];
                    PREADY<= 1'b1;
                end
            end
            else begin
                PREADY <= 1'b0;
            end
        end             
    end
endmodule





