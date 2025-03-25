module APB_master(PCLK, PRESET, PTRANSFER, PRDATA, ADDRESS, WRITE_EN, WRITE_DATA, PADDR, PSELx, PENABLE, PWDATA, PWRITE, PREADY);
    input PCLK;
    input PRESET;
    input PTRANSFER;
    input WRITE_EN;
    input [31:0] PRDATA;
    input [31:0] ADDRESS;
    input [31:0] WRITE_DATA;
    input PREADY;

    output reg [31:0] PADDR;
    output reg PSELx;
    output reg PENABLE;
    output reg [31:0] PWDATA;
    output reg PWRITE;
    output reg [31:0] READ_DATA;

    localparam IDLE = 2'b00;
    localparam SETUP = 2'b01;
    localparam ACCESS = 2'b10;
    reg [1:0] state;
    always @(posedge PCLK or negedge PRESET) begin
        if(!PRESET) begin   
            PADDR <= 0;
            PWDATA <= 0;
            PWRITE <= 0;
            READ_DATA <= 0;
            PWRITE <= 0;
        end
        else begin
            case(state) 
                IDLE : begin
                    PSELx <= 0;
                    PENABLE <= 0;
                    if(PTRANSFER) begin
                        state <= SETUP;
                        PSELx <= 1'b1;
                        PADDR <= ADDRESS;
                        PWDATA <= WRITE_DATA;
                        PWRITE <= WRITE_EN;
                        PENABLE <= 1;
                    end
                end
                SETUP : begin
                    state <= ACCESS;
                end
                ACCESS : begin
                    if(PREADY) begin        
                        if(!WRITE_EN) begin
                            READ_DATA <= PRDATA;
                            state <= IDLE;
                        end
                    end
                    else begin  
                        state <= ACCESS;
                    end
                end
            endcase
        end
    end
endmodule