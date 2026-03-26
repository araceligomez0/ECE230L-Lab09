module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
    wire [7:0] dataA, dataB, dataC, dataD;
    wire enable_byte1, enable_byte2, enable_byte3, enable_byte4;
    wire [7:0] memoryA, memoryB, memoryC, memoryD;


demux data_demux (
      .data(data),
      .sel(addr),
      .A(dataA),
      .B(dataB),
      .C(dataC),
      .D(dataD)
    );

    // 2. Demultiplex store -> selected byte
    demux store_demux (
      .data(store),
      .sel(addr),
      .A(enable_byte1),
      .B(enable_byte2),
      .C(enable_byte3),
      .D(enable_byte4)
    );
    
  
    byte_memory byte0(
      .data(dataA),
      .store(enable_byte1),
      .memory(memoryA));
  
    byte_memory byte1(
      .data(dataB),
      .store(enable_byte2),
      .memory(memoryB));
  
    byte_memory byte2(
      .data(dataC),
      .store(enable_byte3),
      .memory(memoryC));
  
    byte_memory byte3(
      .data(dataD),
      .store(enable_byte4),
      .memory(memoryD));
  

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs
    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    

    wire [7:0] out;
    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
    mux output_mux(
        .A(memoryA),
        .B(memoryB),
        .C(memoryC),
        .D(memoryD),
        .sel(addr),
        .Out(out)
    );
    
    assign memory = out;
  

endmodule