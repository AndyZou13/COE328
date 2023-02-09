library verilog;
use verilog.vl_types.all;
entity decodModified_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(0 to 3);
        z               : in     vl_logic_vector(0 to 3);
        sampler_rx      : in     vl_logic
    );
end decodModified_vlg_check_tst;
