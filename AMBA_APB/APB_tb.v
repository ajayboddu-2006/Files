module APB_tb;
    reg PCLK;
    reg PRESET;
    reg PTRANSFER;
    reg [31:0] ADDRESS;
    reg [31:0]WRITE_DATA;
    reg WRITE_EN;
    wire [31:0] READ_DATA;

    APB_top DUT (
        .PCLK(PCLK),
        .PRESET(PRESET),
        .PTRANSFER(PTRANSFER),
        .ADDRESS(ADDRESS),
        .WRITE_DATA(WRITE_DATA),
        .WRITE_EN(WRITE_EN),
        .READ_DATA(READ_DATA)
    );

  
    initial begin
        PCLK = 0;
        forever #5 PCLK = ~PCLK;
    end

    initial begin
        PRESET = 0;
        PTRANSFER = 0;
        ADDRESS = 32'h0;
        WRITE_DATA = 32'h0;
        WRITE_EN= 0;

        @(negedge PCLK);
        PRESET = 1;
        @(negedge PCLK);

        // Test Write Operation (write to address 4)
        ADDRESS= 32'h4;        
        WRITE_DATA = 32'hABCD;  // Data to write
        WRITE_EN = 1;           
        PTRANSFER = 1;           // Start transfer (setup phase)
        @(negedge PCLK);
        // Remain in transfer for the access phase
        @(negedge PCLK);        // Allow one more clock for access
        PTRANSFER = 0;           // End transfer
        @(negedge PCLK);

        // Wait for a few clock cycles to ensure the write completes
        repeat(2) @(negedge PCLK);

        // Test Read Operation (read from address 4)
        ADDRESS = 32'h4;        // Same address
        WRITE_EN = 0;           
        PTRANSFER = 1;           // Start transfer (setup phase)
        @(negedge PCLK);
        // Remain in transfer for the access phase
        @(negedge PCLK);        // Allow one more clock for access
        PTRANSFER = 0;           // End transfer
        @(negedge PCLK);

        // Wait for a few clock cycles for read completion
        @(negedge PCLK);
        @(negedge PCLK);

        // Display the read data value
        $monitor("Read Data: %h", READ_DATA);  // Should be 32'hABCD

        #100  $finish;
    end
    initial begin
        $dumpfile("APB.vcd");
        $dumpvars(0, APB_tb);
    end

endmodule