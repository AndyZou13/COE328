library verilog;
use verilog.vl_types.all;
entity seg7_vlg_check_tst is
    port(
        leds            : in     vl_logic_vector(1 to 7);
        neg             : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end seg7_vlg_check_tst;
