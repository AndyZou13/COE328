library verilog;
use verilog.vl_types.all;
entity john_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(1 to 7);
        neg             : in     vl_logic_vector(1 to 7);
        Q               : in     vl_logic_vector(0 to 2);
        sampler_rx      : in     vl_logic
    );
end john_vlg_check_tst;
