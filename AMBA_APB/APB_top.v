module APB_top(PCLK, PRESET, PTRANSFER, WRITE_DATA, WRITE_EN, ADDRESS, READ_DATA);

    input PCLK;
    input PRESET;
    input PTRANSFER;
    input [31:0] WRITE_DATA;
    input WRITE_EN;
    input [31:0] ADDRESS;
    
    output [31:0] READ_DATA;

    
    wire [31:0] PRDATA;
    wire [31:0] PADDR;
    wire PSELx;
    wire PENABLE;
    wire [31:0] PWDATA;
    wire PWRITE;
    wire PREADY;

    APB_master MASTER(
        .PCLK(PCLK), 
        .PRESET(PRESET), 
        .PTRANSFER(PTRANSFER), 
        .PRDATA(PRDATA), 
        .ADDRESS(ADDRESS), 
        .WRITE_EN(WRITE_EN), 
        .WRITE_DATA(WRITE_DATA), 
        .PADDR(PADDR), 
        .PSELx(PSELx), 
        .PENABLE(PENABLE), 
        .PWDATA(PWDATA), 
        .PWRITE(PWRITE),
        .PREADY(PREADY)
    );

    APB_slave SLAVE(
        .PCLK(PCLK),
        .PRESET(PRESET),
        .PSELx(PSELx),
        .PADDR(PADDR),
        .PENABLE(PENABLE),
        .PWDATA(PWDATA),
        .PWRITE(PWRITE),
        .PRDATA(PRDATA),
        .PREADY(PREADY)
    );
endmodule