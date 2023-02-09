library verilog;
use verilog.vl_types.all;
entity lab5_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(1 to 7);
        nled            : in     vl_logic_vector(1 to 7);
        sled            : in     vl_logic_vector(1 to 7);
        snled           : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end lab5_vlg_check_tst;
